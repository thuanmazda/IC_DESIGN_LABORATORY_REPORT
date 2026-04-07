`timescale 1ns/1ns
module fsm_onehot (
    input  logic clk,
    input  logic rst,
    input  logic w,
    output logic z
);
    // state[0]=A, [1]=B, [2]=C, [3]=D, [4]=E [5]=F, [6]=G, [7]=H, [8]=I
    logic [8:0] state, next_state;
    always_ff @(posedge clk) begin
        if (rst)
            state <= 9'b000000001;
        else
            state <= next_state;
    end
    assign next_state[0] = 1'b0;
    assign next_state[1] = ~w & (state[0] | state[5] | state[6] | state[7] | state[8]);
    assign next_state[2] = ~w & state[1];
    assign next_state[3] = ~w & state[2];
    assign next_state[4] = ~w & (state[3] | state[4]);   // overlapping
    assign next_state[5] =  w & (state[0] | state[1] | state[2] | state[3] | state[4]);
    assign next_state[6] =  w & state[5];
    assign next_state[7] =  w & state[6];
    assign next_state[8] =  w & (state[7] | state[8]);   // overlapping
    // Output: z=1 khi state E (bit 4) hoac state I (bit 8)
    assign z = state[4] | state[8];

endmodule