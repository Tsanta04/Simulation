function plot2DResistivity(x, y, resistivity)
    % Plot a 2D resistivity map in the current axes (for subplot)

    % Create grid and interpolate data
    [X_grid, Y_grid] = meshgrid(unique(x), unique(y));
    Z_matrix = griddata(x, y, resistivity, X_grid, Y_grid);

    % Plot filled contour
    [C, h] = contourf(X_grid, Y_grid, Z_matrix, 50);
    set(h, 'LineStyle', 'none');

    % Custom pink colormap
    pinkMap = [
        1.0 0.9 0.95; % very light pink
        1.0 0.7 0.85; % light pink
        1.0 0.4 0.7;  % pink
        1.0 0.0 0.5;  % dark pink
    ];
    colormap(pinkMap);

    colorbar;  % Add colorbar for each subplot

    xlabel('X (m)');
    ylabel('Y (m)');
end
