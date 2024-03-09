%% READNG A .pch FILE TO PLOT THE RESPONSE
% File:
filename = 'Task2_SOL112.pch';
% Line of first data entry to retrieve:
StartLine = 8;
% Number of time steps to read:
NtimeSteps = 1000;

[times, states] = ReadTranscientResponse(filename, StartLine, NtimeSteps);

%%
figure
plot(times, states(:,3))






