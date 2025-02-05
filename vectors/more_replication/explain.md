# Problem
Given five 1-bit signals (a, b, c, d, and e), compute all 25 pairwise one-bit comparisons in the 25-bit output vector. The output should be 1 if the two bits being compared are equal.

out[24] = ~a ^ a;   // a == a, so out[24] is always 1.
out[23] = ~a ^ b;
out[22] = ~a ^ c;
...
out[ 1] = ~e ^ d;
out[ 0] = ~e ^ e;

## Explain

- ver 1 : old ver
- ver 2 : new ver


## a side note

1. First attempt:
I initially tried like old ver.
But It is hard coding.

2. Second attempt:
I learned Replication operation (like the following) is very useful

```Verilog
assign bottom = {5{a,b,c,d,e}};
```
