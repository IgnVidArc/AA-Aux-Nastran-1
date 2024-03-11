function [TIMES, STATES] = ReadTranscientResponse(filename, StartLine, NtimeSteps)
    % Returns:
    % TIMES:  array (NtimeSteps+1,1)
    % STATES: array (NtimeSteps+1,6)
    fid = fopen(filename, 'r');

    TIMES = zeros(NtimeSteps,1);
    STATES = zeros(NtimeSteps,6);
    
    % Skip some lines:
    for i = 1:StartLine - 1
        fgetl(fid);
    end
    
    for k=1:NtimeSteps+1
        disp(k)
        % Normal line:
        data_cell = textscan(fid, '%s', 6);
    
        t = str2double(cell2mat(data_cell{1,1}(1)));
        x = str2double(cell2mat(data_cell{1,1}(3)));
        y = str2double(cell2mat(data_cell{1,1}(4)));
        z = str2double(cell2mat(data_cell{1,1}(5)));
        
        % Cont line:
        data_cell = textscan(fid, '%s', 5);
    
        turnx = str2double(cell2mat(data_cell{1,1}(2)));
        turny = str2double(cell2mat(data_cell{1,1}(3)));
        turnz = str2double(cell2mat(data_cell{1,1}(4)));
    
        % Storing the data:
        TIMES(k) = t;
        STATES(k,:) = [x,y,z,turnx,turny,turnz];
    
    end
    
    fclose(fid);
end
