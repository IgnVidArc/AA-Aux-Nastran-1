%% TASK 3: SENSITIVITY ANALYSIS TO dt of 1-cos LOAD

dti = [0.01; 0.05; 0.09; 0.1; 0.11; 0.2; 0.3; 1.0]';
Fi = 1./dti;
disp(Fi)
leg_dti = cell(length(dti),1);
for k=1:length(dti)
    leg_dti{k} = ['dt = ', num2str(dti(k),'%.2f'), ' s'];
end
disp(leg_dti)

%% Run if first time

% Number of deltat to test:
Ncases = length(dti);
% Number of timesteps defined in the Nastran Solver:
NtimeSteps = 1001;

% Arrays for times Vertical displacements of M1 and M2:
TIMES = zeros(Ncases, NtimeSteps+1);
Z1 = zeros(Ncases, NtimeSteps+1);
Z2 = zeros(Ncases, NtimeSteps+1);
LOADS = zeros(Ncases, NtimeSteps+1);


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
    % (1-cos) LOAD on mass M1:
    StartLine = 14085;
    [~    , loads] = ReadTranscientResponse(filedir, StartLine, NtimeSteps);
    LOADS(k,:) = loads(:,3);
end
save('TASK3_SIMULATION_DATA.mat', 'TIMES', "Z1", "Z2", "LOADS", "Ncases", "NtimeSteps", "-mat")

%% Run if already saved data.
load("TASK3_SIMULATION_DATA.mat") % --> TIMES, Z1, Z2, LOADS, Ncases, NtimeSteps

%% Calcultaing the maximum amplitude for each dt:
maxZ1 = zeros(Ncases,1);
maxZ2 = zeros(Ncases,1);
for k=1:Ncases
    maxZ1(k) = max(abs(Z1(k,:)));
    maxZ2(k) = max(abs(Z2(k,:)));
end

%% FIG: Load on mass M1:
figure
hold on
for k=1:Ncases
    plot(TIMES, LOADS(k,:))
end
legend(leg_dti, Interpreter='latex')
xlim([0,.05])

%% FIG: Temporal response of each mass:
figure
hold on
for k=1:Ncases
    plot(TIMES, Z1(k,:))
end
title('M1')
figure
hold on
for k=1:Ncases
    plot(TIMES, Z2(k,:))
end
title('M2')


%% FIG:
fs = 12;
figure
plot(dti, maxZ1, '-s')
hold on
plot(dti, maxZ2, '-s')

legend({'$M_1$', '$M_2$'}, Interpreter='latex', FontSize=fs)






