`timescale 1ns/1ns
module fsm_binary_behav (
    input logic clk,
    input logic rst,
    input logic w,
    output logic z
);
    typedef enum logic [3:0] {
        A = 4'd0,
        B = 4'd1,
        C = 4'd2,
        D = 4'd3,
        E = 4'd4,
        F = 4'd5,
        G = 4'd6,
        H = 4'd7,
        I = 4'd8
    } state_t;
    
    state_t present_state, next_state;
    always_ff @(posedge clk, posedge rst) begin
        if (rst)
            present_state <= A;
        else
            present_state <= next_state;
    end

    always_comb begin
        next_state = present_state;
        case (present_state)
            A: if (w) next_state = F; else next_state = B;
            B: if (w) next_state = F; else next_state = C;
            C: if (w) next_state = F; else next_state = D;
            D: if (w) next_state = F; else next_state = E;
            E: if (w) next_state = F; else next_state = E;
            F: if (w) next_state = G; else next_state = B;
            G: if (w) next_state = H; else next_state = B;
            H: if (w) next_state = I; else next_state = B;
            I: if (w) next_state = I; else next_state = B;
            default: next_state = A;
        endcase
    end

    assign z = (present_state == E) || (present_state == I);
endmodule