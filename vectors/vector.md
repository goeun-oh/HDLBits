#Explain
- ver1: concatenation ver
- ver2: generate block ver

## a side note
    1. **First Attempt:**
    I initially tried the following:
    '''verilog
    assign out=in[0:7];
    
    but I realized this is not allowed in Verilog.
    
    2. **Second Attempt:**
    I tried hard coding with the following:
    '''verilog
    assing out[0] = in[7] ...
    and so on

    and now I realize that using concatenation and generate block is more efficient.
