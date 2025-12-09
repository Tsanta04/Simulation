function generate3DData(filename, max_x, max_y, max_z, step_x, step_y, step_z, max_value)
    % generate3DData - Generate 3D resistivity data and save to CSV
    %
    % Syntax:
    %   generate3DData('../Data/nappes3D.csv', 4, 2, 1, 0.5, 0.5, 0.2, 4200)
    %
    % Inputs:
    %   filename  - output CSV file name
    %   max_x     - maximum X value
    %   max_y     - maximum Y value
    %   max_z     - maximum Z value
    %   step_x    - step size for X
    %   step_y    - step size for Y
    %   step_z    - step size for Z
    %   max_value - maximum random resistivity value

    % Open file for writing
    fid = fopen(filename, 'w');

    % Optional header
    % fprintf(fid, 'x ; y ; z ; value\n');

    % Loop over X
    i = 0;
    while i <= max_x
        x = i;

        % Loop over Y
        j = 0;
        while j <= max_y
            y = j;

            % Loop over Z
            k = 0;
            while k <= max_z
                z = k;

                % Generate random resistivity value
                value = rand() * max_value;

                % Write to CSV
                fprintf(fid, '%f ; %f ; %f ; %f\n', x, y, z, value);

                k = k + step_z;
            end

            j = j + step_y;
        end

        i = i + step_x;
    end

    % Close file
    fclose(fid);

    fprintf('File generated: %s\n', filename);
end
%generate3DData('../Data/nappes3D.csv', 4, 2, 1, 0.5, 0.5, 0.2, 4200);
