`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////
// Pong Testbench - View in waveform, capture at end
//////////////////////////////////////////////////////////////////////////////

module pong_tb;

    reg  clk;
    reg  rst;

    // 25MHz pixel clock
    initial clk = 0;
    always #20 clk = ~clk;

    // VGA counters
    reg [9:0] h_count, v_count;
    integer frame_count;
    
    // Game state
    reg [9:0] p1_y, p2_y, ball_x, ball_y;
    
    // VGA outputs
    wire [3:0] vga_r, vga_g, vga_b;
    wire hsync, vsync;
    wire display_on;
    
    // Parameters
    localparam H_DISPLAY = 640, V_DISPLAY = 480;
    localparam PADDLE_W = 8, PADDLE_H = 60;
    localparam P1_X = 20, P2_X = 612;
    localparam BALL_SIZE = 8;

    // Initialize
    initial begin
        h_count = 0;
        v_count = 0;
        frame_count = 0;
        p1_y = 210;
        p2_y = 210;
        ball_x = 316;
        ball_y = 236;
    end

    // VGA timing
    always @(posedge clk) begin
        if (rst) begin
            h_count <= 0;
            v_count <= 0;
        end else begin
            if (h_count == 799) begin
                h_count <= 0;
                if (v_count == 524) begin
                    v_count <= 0;
                    frame_count <= frame_count + 1;
                    $display("Frame %0d complete at %0t", frame_count + 1, $time);
                end else
                    v_count <= v_count + 1;
            end else
                h_count <= h_count + 1;
        end
    end
    
    // Graphics
    assign display_on = (h_count < H_DISPLAY) && (v_count < V_DISPLAY);
    
    wire draw_p1 = (h_count >= P1_X) && (h_count < P1_X + PADDLE_W) &&
                   (v_count >= p1_y) && (v_count < p1_y + PADDLE_H);
    wire draw_p2 = (h_count >= P2_X) && (h_count < P2_X + PADDLE_W) &&
                   (v_count >= p2_y) && (v_count < p2_y + PADDLE_H);
    wire draw_ball = (h_count >= ball_x) && (h_count < ball_x + BALL_SIZE) &&
                     (v_count >= ball_y) && (v_count < ball_y + BALL_SIZE);
    wire draw_line = (h_count == 320) && v_count[3];
    
    wire [3:0] pixel = (draw_p1 || draw_p2 || draw_ball) ? 4'hF : (draw_line ? 4'h8 : 4'h0);
    
    assign vga_r = display_on ? pixel : 4'h0;
    assign vga_g = display_on ? pixel : 4'h0;
    assign vga_b = display_on ? pixel : 4'h0;
    assign hsync = ~((h_count >= 656) && (h_count < 752));
    assign vsync = ~((v_count >= 490) && (v_count < 492));

    // Test sequence
    initial begin
        $display("=== PONG TESTBENCH ===");
        $display("View signals in waveform viewer:");
        $display("  - vga_r, vga_g, vga_b for pixel colors");
        $display("  - h_count, v_count for position");
        $display("  - hsync, vsync for sync timing");
        
        rst = 1;
        #200;
        rst = 0;
        $display("Reset released");
        
        // Run for 2 frames
        wait(frame_count >= 2);
        
        $display("=== SIMULATION COMPLETE ===");
        $display("Check waveform to verify VGA output");
        $finish;
    end

endmodule
