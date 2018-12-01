% MATLAB CODE

% SIN WAVE
P = 1e-3;
n = 100;
Ts = P/n;
f = 1/P;
x = 0:Ts:P-Ts;
y = sin(2 * pi * f * x);
stem(x,y);

% SQUARE WAVE
P = 1e-3;
n = 100;
Ts = P/n;
f = 1/P;
x = 0:Ts:P-Ts;
y = square(2 * pi * f * x);
stem(x,y);

% TRIANGLE WAVE
P = 1e-3;
n = 100;
Ts = P/n;
f = 1/P;
x = 0:Ts:P-Ts;
y = sawtooth(2 * pi * f * x);
stem(x,y);

% COS WAVE
P = 1e-3;
n = 100;
Ts = P/n;
f = 1/P;
x = 0:Ts:P-Ts;
y = cos(2 * pi * f * x);
stem(x,y);