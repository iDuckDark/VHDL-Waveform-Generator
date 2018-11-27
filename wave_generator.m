

P = 1e-3;
n = 100;

Ts = P/n;
f = 1/P;
x = 0:Ts:P-Ts;

y = cos(2 * pi * f * x);
stem(x,y)


