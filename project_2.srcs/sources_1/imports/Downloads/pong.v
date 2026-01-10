module pong (
    input  wire       clk,          // 100MHz system clock
    input  wire       rst,          // Active-high reset
    input  wire       btn_p1_up,    // Player 1 paddle up
    input  wire       btn_p1_down,  // Player 1 paddle down
    input  wire       btn_p2_up,    // Player 2 paddle up
    input  wire       btn_p2_down,  // Player 2 paddle down
    output wire       hsync,        // VGA horizontal sync
    output wire       vsync,        // VGA vertical sync
    output wire [3:0] vga_r,        // VGA red
    output wire [3:0] vga_g,        // VGA green
    output wire [3:0] vga_b         // VGA blue
);

    reg [1:0] clk_div;
    wire pix_clk = clk_div[1];
    
    always @(posedge clk or posedge rst) begin
        if (rst)
            clk_div <= 2'b0;
        else
            clk_div <= clk_div + 1;
    end

    localparam H_DISPLAY    = 640;
    localparam H_FRONT      = 16;
    localparam H_SYNC       = 96;
    localparam H_BACK       = 48;
    localparam H_TOTAL      = H_DISPLAY + H_FRONT + H_SYNC + H_BACK; // 800
    
    localparam V_DISPLAY    = 480;
    localparam V_FRONT      = 10;
    localparam V_SYNC       = 2;
    localparam V_BACK       = 33;
    localparam V_TOTAL      = V_DISPLAY + V_FRONT + V_SYNC + V_BACK; // 525

    reg [9:0] h_count;
    reg [9:0] v_count;
    
    wire h_end = (h_count == H_TOTAL - 1);
    wire v_end = (v_count == V_TOTAL - 1);
    wire display_on = (h_count < H_DISPLAY) && (v_count < V_DISPLAY);
    
    always @(posedge pix_clk or posedge rst) begin
        if (rst) begin
            h_count <= 0;
            v_count <= 0;
        end else begin
            if (h_end) begin
                h_count <= 0;
                if (v_end)
                    v_count <= 0;
                else
                    v_count <= v_count + 1;
            end else begin
                h_count <= h_count + 1;
            end
        end
    end
    
    assign hsync = ~((h_count >= H_DISPLAY + H_FRONT) && 
                     (h_count < H_DISPLAY + H_FRONT + H_SYNC));
    assign vsync = ~((v_count >= V_DISPLAY + V_FRONT) && 
                     (v_count < V_DISPLAY + V_FRONT + V_SYNC));

    localparam PADDLE_WIDTH  = 8;
    localparam PADDLE_HEIGHT = 60;
    localparam PADDLE_SPEED  = 3;
    localparam BALL_SIZE     = 8;
    localparam BALL_SPEED    = 2;
    
    localparam P1_X = 20;                      // Left paddle X position
    localparam P2_X = H_DISPLAY - 20 - PADDLE_WIDTH; // Right paddle X position

    reg [9:0] p1_y;           // Player 1 paddle Y
    reg [9:0] p2_y;           // Player 2 paddle Y
    reg [9:0] ball_x;         // Ball X position
    reg [9:0] ball_y;         // Ball Y position
    reg       ball_dx;        // Ball X direction (0=left, 1=right)
    reg       ball_dy;        // Ball Y direction (0=up, 1=down)
    
    // Score tracking
    reg [3:0] p1_score;       // Player 1 score (0-9)
    reg [3:0] p2_score;       // Player 2 score (0-9)

    wire frame_tick = (h_count == 0) && (v_count == V_DISPLAY);

    reg [3:0] frame_count;
    wire game_tick = frame_tick && (frame_count == 0);
    
    always @(posedge pix_clk or posedge rst) begin
        if (rst)
            frame_count <= 0;
        else if (frame_tick)
            frame_count <= frame_count + 1;
    end

    always @(posedge pix_clk or posedge rst) begin
        if (rst) begin
            p1_y <= (V_DISPLAY - PADDLE_HEIGHT) / 2;
            p2_y <= (V_DISPLAY - PADDLE_HEIGHT) / 2;
        end else if (game_tick) begin
            // Player 1 paddle
            if (btn_p1_up && p1_y > PADDLE_SPEED)
                p1_y <= p1_y - PADDLE_SPEED;
            else if (btn_p1_down && p1_y < V_DISPLAY - PADDLE_HEIGHT - PADDLE_SPEED)
                p1_y <= p1_y + PADDLE_SPEED;
            
            // Player 2 paddle
            if (btn_p2_up && p2_y > PADDLE_SPEED)
                p2_y <= p2_y - PADDLE_SPEED;
            else if (btn_p2_down && p2_y < V_DISPLAY - PADDLE_HEIGHT - PADDLE_SPEED)
                p2_y <= p2_y + PADDLE_SPEED;
        end
    end

    always @(posedge pix_clk or posedge rst) begin
        if (rst) begin
            ball_x   <= H_DISPLAY / 2;
            ball_y   <= V_DISPLAY / 2;
            ball_dx  <= 1;
            ball_dy  <= 1;
            p1_score <= 0;
            p2_score <= 0;
        end else if (game_tick) begin
            // Update ball position
            if (ball_dx)
                ball_x <= ball_x + BALL_SPEED;
            else
                ball_x <= ball_x - BALL_SPEED;
            
            if (ball_dy)
                ball_y <= ball_y + BALL_SPEED;
            else
                ball_y <= ball_y - BALL_SPEED;
            
            // Top/bottom wall collision
            if (ball_y <= BALL_SPEED)
                ball_dy <= 1;
            else if (ball_y >= V_DISPLAY - BALL_SIZE - BALL_SPEED)
                ball_dy <= 0;
            
            // Left paddle collision
            if (ball_x <= P1_X + PADDLE_WIDTH + BALL_SPEED &&
                ball_x >= P1_X &&
                ball_y + BALL_SIZE >= p1_y &&
                ball_y <= p1_y + PADDLE_HEIGHT)
                ball_dx <= 1;
            
            // Right paddle collision
            if (ball_x + BALL_SIZE >= P2_X - BALL_SPEED &&
                ball_x <= P2_X + PADDLE_WIDTH &&
                ball_y + BALL_SIZE >= p2_y &&
                ball_y <= p2_y + PADDLE_HEIGHT)
                ball_dx <= 0;
            
            // Ball out on left - Player 2 scores
            if (ball_x <= BALL_SPEED) begin
                ball_x  <= H_DISPLAY / 2;
                ball_y  <= V_DISPLAY / 2;
                ball_dx <= 0;  // Serve towards player 1 (who lost)
                if (p2_score == 4'd9) begin
                    p1_score <= 0;
                    p2_score <= 0;
                end else begin
                    p2_score <= p2_score + 1;
                end
            end
            
            // Ball out on right - Player 1 scores
            if (ball_x >= H_DISPLAY - BALL_SIZE - BALL_SPEED) begin
                ball_x  <= H_DISPLAY / 2;
                ball_y  <= V_DISPLAY / 2;
                ball_dx <= 1;  // Serve towards player 2 (who lost)
                if (p1_score == 4'd9) begin
                    p1_score <= 0;
                    p2_score <= 0;
                end else begin
                    p1_score <= p1_score + 1;
                end
            end
        end
    end

    wire draw_p1_paddle = (h_count >= P1_X) && (h_count < P1_X + PADDLE_WIDTH) &&
                          (v_count >= p1_y) && (v_count < p1_y + PADDLE_HEIGHT);
    
    wire draw_p2_paddle = (h_count >= P2_X) && (h_count < P2_X + PADDLE_WIDTH) &&
                          (v_count >= p2_y) && (v_count < p2_y + PADDLE_HEIGHT);
    
    wire draw_ball = (h_count >= ball_x) && (h_count < ball_x + BALL_SIZE) &&
                     (v_count >= ball_y) && (v_count < ball_y + BALL_SIZE);
    
    // Center dashed line
    wire draw_center_line = (h_count >= H_DISPLAY/2 - 1) && 
                            (h_count < H_DISPLAY/2 + 1) &&
                            (v_count[4] == 1'b1);

    // Digit dimensions
    localparam DIGIT_WIDTH  = 32;
    localparam DIGIT_HEIGHT = 48;
    localparam SEG_THICK    = 4;
    
    // Score display positions (near top center, on each side)
    localparam P1_SCORE_X = H_DISPLAY/2 - 60;  // Left of center
    localparam P2_SCORE_X = H_DISPLAY/2 + 28;  // Right of center
    localparam SCORE_Y    = 20;                // Top margin
    
    // 7-segment pattern: segments are A(top), B(top-right), C(bot-right), 
    //                    D(bottom), E(bot-left), F(top-left), G(middle)
    // Returns 1 if segment should be on for given digit (0-9)
    function [6:0] digit_to_segments;
        input [3:0] digit;
        begin
            case (digit)
                4'd0: digit_to_segments = 7'b1111110;  // A,B,C,D,E,F
                4'd1: digit_to_segments = 7'b0110000;  // B,C
                4'd2: digit_to_segments = 7'b1101101;  // A,B,D,E,G
                4'd3: digit_to_segments = 7'b1111001;  // A,B,C,D,G
                4'd4: digit_to_segments = 7'b0110011;  // B,C,F,G
                4'd5: digit_to_segments = 7'b1011011;  // A,C,D,F,G
                4'd6: digit_to_segments = 7'b1011111;  // A,C,D,E,F,G
                4'd7: digit_to_segments = 7'b1110000;  // A,B,C
                4'd8: digit_to_segments = 7'b1111111;  // All segments
                4'd9: digit_to_segments = 7'b1111011;  // A,B,C,D,F,G
                default: digit_to_segments = 7'b0000000;
            endcase
        end
    endfunction
    
    function is_segment_pixel;
        input [9:0] dx;
        input [9:0] dy;
        input [6:0] segments;
        reg seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g;
        begin
            seg_a = segments[6];  // Top
            seg_b = segments[5];  // Top-right
            seg_c = segments[4];  // Bottom-right
            seg_d = segments[3];  // Bottom
            seg_e = segments[2];  // Bottom-left
            seg_f = segments[1];  // Top-left
            seg_g = segments[0];  // Middle
            
            is_segment_pixel = 
                // Segment A (top horizontal)
                (seg_a && dy < SEG_THICK && dx >= SEG_THICK && dx < DIGIT_WIDTH - SEG_THICK) ||
                // Segment B (top-right vertical)
                (seg_b && dx >= DIGIT_WIDTH - SEG_THICK && dy >= SEG_THICK && dy < DIGIT_HEIGHT/2) ||
                // Segment C (bottom-right vertical)
                (seg_c && dx >= DIGIT_WIDTH - SEG_THICK && dy >= DIGIT_HEIGHT/2 && dy < DIGIT_HEIGHT - SEG_THICK) ||
                // Segment D (bottom horizontal)
                (seg_d && dy >= DIGIT_HEIGHT - SEG_THICK && dx >= SEG_THICK && dx < DIGIT_WIDTH - SEG_THICK) ||
                // Segment E (bottom-left vertical)
                (seg_e && dx < SEG_THICK && dy >= DIGIT_HEIGHT/2 && dy < DIGIT_HEIGHT - SEG_THICK) ||
                // Segment F (top-left vertical)
                (seg_f && dx < SEG_THICK && dy >= SEG_THICK && dy < DIGIT_HEIGHT/2) ||
                // Segment G (middle horizontal)
                (seg_g && dy >= DIGIT_HEIGHT/2 - SEG_THICK/2 && dy < DIGIT_HEIGHT/2 + SEG_THICK/2 && 
                 dx >= SEG_THICK && dx < DIGIT_WIDTH - SEG_THICK);
        end
    endfunction
    
    wire [9:0] p1_dx = h_count - P1_SCORE_X;
    wire [9:0] p1_dy = v_count - SCORE_Y;
    wire p1_in_digit = (h_count >= P1_SCORE_X) && (h_count < P1_SCORE_X + DIGIT_WIDTH) &&
                       (v_count >= SCORE_Y) && (v_count < SCORE_Y + DIGIT_HEIGHT);
    wire [6:0] p1_segs = digit_to_segments(p1_score);
    wire draw_p1_score = p1_in_digit && is_segment_pixel(p1_dx, p1_dy, p1_segs);
    
    wire [9:0] p2_dx = h_count - P2_SCORE_X;
    wire [9:0] p2_dy = v_count - SCORE_Y;
    wire p2_in_digit = (h_count >= P2_SCORE_X) && (h_count < P2_SCORE_X + DIGIT_WIDTH) &&
                       (v_count >= SCORE_Y) && (v_count < SCORE_Y + DIGIT_HEIGHT);
    wire [6:0] p2_segs = digit_to_segments(p2_score);
    wire draw_p2_score = p2_in_digit && is_segment_pixel(p2_dx, p2_dy, p2_segs);

    wire [3:0] pixel_r, pixel_g, pixel_b;
    
    assign pixel_r = (draw_ball)        ? 4'hF :
                     (draw_p1_paddle)   ? 4'hF :
                     (draw_p2_paddle)   ? 4'hF :
                     (draw_p1_score)    ? 4'hF :
                     (draw_p2_score)    ? 4'hF :
                     (draw_center_line) ? 4'h8 : 4'h0;
    
    assign pixel_g = (draw_ball)        ? 4'hF :
                     (draw_p1_paddle)   ? 4'hF :
                     (draw_p2_paddle)   ? 4'hF :
                     (draw_p1_score)    ? 4'hF :
                     (draw_p2_score)    ? 4'hF :
                     (draw_center_line) ? 4'h8 : 4'h0;
    
    assign pixel_b = (draw_ball)        ? 4'hF :
                     (draw_p1_paddle)   ? 4'hF :
                     (draw_p2_paddle)   ? 4'hF :
                     (draw_p1_score)    ? 4'hF :
                     (draw_p2_score)    ? 4'hF :
                     (draw_center_line) ? 4'h8 : 4'h0;
    
    assign vga_r = display_on ? pixel_r : 4'h0;
    assign vga_g = display_on ? pixel_g : 4'h0;
    assign vga_b = display_on ? pixel_b : 4'h0;

endmodule
