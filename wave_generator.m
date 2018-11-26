P = 1e-3;
n = 100;

Ts = P/n;
f = 1/P;
x = 0:Ts:P-Ts;

y = sawtooth(2 * pi * f * x);
stem(x,y)


P = 1e-3;
n = 100;

Ts = P/n;
f = 1/P;
x = 0:Ts:P-Ts;

y = sin(2 * pi * f * x);
stem(x,y)


P = 1e-3;
n = 100;

Ts = P/n;
f = 1/P;
x = 0:Ts:P-Ts;

y = square(2 * pi * f * x);
stem(x,y)
