dt=0.05;
t=-10:dt:10;
Nt=length(t);

x1=sin(5*t);
x2=sin(7*t);
x=x1+x2;
%x=upsample(x1,2);

X=fft(x,max(1001,Nt))*dt;
X=fftshift(X);

Nw=length(X);
k=-(Nw-1)/2:1:(Nw-1)/2;
w= k*2*pi/Nw/dt;

plot(w,abs(X))

num= [1]; den=[1/0.5 1];
H= tf(num,den)
bode(H);