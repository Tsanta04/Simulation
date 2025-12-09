function plotMultiple2D(filename)
    % Plot multiple 2D slices from 3D resistivity data file

    data = dlmread(filename, ';');
    x = data(:,1);
    y = data(:,2);
    z = data(:,3);
    resistivity = data(:,4);

    unique_Z = unique(z);

    % Determine subplot grid size
    num_rows = ceil(sqrt(length(unique_Z)));
    num_cols = ceil(length(unique_Z)/num_rows);

    figure;

    for k = 1:length(unique_Z)
        zk = unique_Z(k);

        % Extract points for current depth
        idx = z == zk;
        xk = x(idx);
        yk = y(idx);
        rk = resistivity(idx);

        % Activate subplot
        subplot(num_rows, num_cols, k);

        % Plot the slice
        plot2DResistivity(xk, yk, rk);

        title(['Z = ', num2str(zk), ' m']);
    end
end

% plotMultiple2D('../Data/nappes3D.csv');
