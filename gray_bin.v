module gray_bin(gray_in,binary_out);

        input [3:0] gray_in;
        output [3:0] binary_out;
        
        buf B1(binary_out[3],gray_in[3]);
        xor X1(binary_out[2],binary_out[3],gray_in[2]);
        xor X2(binary_out[1],binary_out[2],gray_in[1]);
        xor X3(binary_out[0],binary_out[1],gray_in[0]);
        
endmodule