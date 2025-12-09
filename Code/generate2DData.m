function generate2DData(filename, n, step_x, step_y, max_value)
    % generate2DData - Generate 2D resistivity data with random Y range and save to CSV
    %
    % Syntax:
    %   generate2DData('../Data/nappes2D.csv', 5, 0.5, 0.2, 4200)
    %
    % Inputs:
    %   filename  - output CSV file name
    %   n         - maximum X value
    %   step_x    - step size for X
    %   step_y    - step size for Y
    %   max_value - maximum random resistivity value

    % Open file for writing
    fid = fopen(filename, 'w');

    % Optional header
    % fprintf(fid, 'x ; y ; value\n');

    % Loop over X
    i = 0;
    while i <= n
        x = i;

        % Random maximum for Y
        max_y = rand() * 2;  % equivalent to random.uniform(0, 2)

        % Loop over Y
        j = 0;
        while j <= max_y
            y = j;

            % Generate random resistivity value
            value = rand() * max_value;

            % Write to CSV, note the negative Y as in Python code
            fprintf(fid, '%f ; %f ; %f\n', x, -y, value);

            j = j + step_y;  % Y step
        end

        i = i + step_x;  % X step
    end

    % Close file
    fclose(fid);

    fprintf('File generated: %s\n', filename);
end

% generate2DData('../Data/nappes2D.csv', 5, 0.5, 0.2, 4200);
