A=0.707;
t=[0:0.0001:4];
f=1;
y=A*sin(2*pi*f*t);
plot(t,y);
title('Exercise 1');
xlabel('time');
ylabel('amplitude');