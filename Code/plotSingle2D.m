function plotSingle2D(filename)
    % Plot a single 2D resistivity map from a CSV file

    data = dlmread(filename, ';');
    x = data(:, 1);
    y = data(:, 2);
    resistivity = data(:, 3);

    figure;
    plot2DResistivity(x, y, resistivity);
end

% plotSingle2D('../Data/nappes2D.csv');