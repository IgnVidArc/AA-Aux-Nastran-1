%% TASK 3: EVOLUTION OF NATURAL FREQUENCIES WITH kCOUPLING:

1.191159E+01
2.140359E+01

%%
k1 = 3947.84;
a = [0, .5, 1, 1.5, 2.5, 5, 50, 1000]';
k = a*k1;

% File:
filename = 'Task2_SOL112.pch';
% Line of first data entry to retrieve:
StartLine = 8;
% Number of time steps to read:
NtimeSteps = 1000;

%% Reading the displacements of 1001:
[times, states] = ReadTranscientResponse(filename, StartLine, NtimeSteps);

%% Reading the loads on 1001:
StartLine = 8052;
[~, loads] = ReadTranscientResponse(filename, StartLine, NtimeSteps);

%%
figure
plot(times, states(:,3))
figure
plot(times, loads(:,3))



