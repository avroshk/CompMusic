% parameters of linear sweep
freq1 = 1000;
freq2 = 20000;

%Amplitude
A=0.5;
% sampling rate
fs_high = 48000;
fs_low = fs_high/4;

% length of a sweep
endTime = 5;

% number of samples of a sweep 
N_high = endTime * fs_high;
N_low = endTime * fs_low;

% ... first increasing for N points, then decreasing for N points
f_sweep = linspace(freq1, freq2, N_high);

% since (in continuous time) instantaneous frequency is derivative of
% phase, we have to compute the "integral" to get the phase for sin() ???
phi = 2 * pi * cumsum(f_sweep) / fs_high;

sweep = A*sin(phi);

% plotting
t = linspace(0, endTime, length(sweep));
plot(t, sweep);

audiowrite('sweep_sample48000.wav',sweep, fs_high, 'BitsPerSample',32 );

f_sweep = linspace(freq1, freq2, N_low);

%-- with four times lower sample rate
phi = 2 * pi * cumsum(f_sweep) / fs_low;

sweep = A*sin(phi);

t = linspace(0, endTime, length(sweep));
plot(t, sweep);

audiowrite('sweep_sample_OneFourth.wav',sweep, fs_low, 'BitsPerSample',32 );



