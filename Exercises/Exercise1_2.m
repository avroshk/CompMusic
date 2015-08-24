A=0.707;
noise = A.*rand(5000,1) - A/2;
plot(2*noise);
title('Exercise 1.2 Noise');
xlabel('time')
ylabel('amplitude')