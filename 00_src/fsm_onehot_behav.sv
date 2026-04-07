`timescale 1ns/1ns
module fsm_onehot_behav (
    input logic clk,
    input logic rst,
    input logic w,
    output logic z
);
    typedef enum logic [8:0] {
        A = 9'b000000001,
        B = 9'b000000010,
        C = 9'b000000100,
        D = 9'b000001000,
        E = 9'b000010000,
        F = 9'b000100000,
        G = 9'b001000000,
        H = 9'b010000000,
        I = 9'b100000000
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