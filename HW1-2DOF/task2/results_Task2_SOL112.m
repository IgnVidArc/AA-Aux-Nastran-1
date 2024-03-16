%% EXAMPLE ON HOW TO READ THE 112 PCH FILE:
% File:
filename = 'Task2_SOL112.pch';
% Line of first data entry to retrieve:
StartLine = 8;
% Number of time steps to read:
NtimeSteps = 1001;

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



