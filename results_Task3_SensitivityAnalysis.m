%% TASK 3: SENSITIVITY ANALYSIS TO dt of 1-cos LOAD

dti = [0.01; 0.05; 0.09; 0.1; 0.11; 0.2; 0.3; 1.0]';
Fi = 1./dti;
disp(Fi)

Ncases = length(dti);
NtimeSteps = 1001;

% Vertical displacement of 
TIMES = zeros(Ncases, NtimeSteps+1);
Z1 = zeros(Ncases, NtimeSteps+1);
Z2 = zeros(Ncases, NtimeSteps+1);

foldername = 'task3_112_pch_sensitivity_analysis/';

for k = 1:Ncases
    filename = ['task3_sol112_dt', num2str(k), '.pch'];
    filedir = [foldername, filename];
    % Displacements of Node 1002 (M1):
    StartLine = 2019;
    [times, states] = ReadTranscientResponse(filedir, StartLine, NtimeSteps);
    TIMES(k,:) = times;
    Z1(k,:) = states(:,3);
    % Displacements of Node 1003 (M2):
    StartLine = 4030;
    [~    , states] = ReadTranscientResponse(filedir, StartLine, NtimeSteps);
    Z2(k,:) = states(:,3);
end

%%
% save('task3_Z1_Z2.m', "TIMES", "Z1", "Z2", '-mat')

%%
figure
hold on
for k=1:Ncases
    plot(TIMES, Z1(k,:))

end
% set(gca, 'YScale', 'log')
figure
hold on
for k=1:Ncases
    plot(TIMES, Z2(k,:))
end






