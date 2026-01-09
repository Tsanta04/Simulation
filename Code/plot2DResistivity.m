function plot2DResistivity(x, y, resistivity)

    % Grille + interpolation
    [X_grid, Y_grid] = meshgrid(unique(x), unique(y));
    Z_matrix = griddata(x, y, resistivity, X_grid, Y_grid);

    % Seuils fixes
    levels = [0 300 600 1000];

    % Tracé avec seuils
    contourf(X_grid, Y_grid, Z_matrix, levels, ...
             'LineStyle', 'none');

    pinkMap = [
        1.0 0.9 0.95; % light pink - water
        1.0 0.9 0.95; % light pink - water
        1.0 0.9 0.95; % light pink - water        
        1.0 0.4 0.7;  % pink - Petrol
        1.0 0.4 0.7;  % pink - Petrol
        1.0 0.4 0.7;  % pink - Petrol
        1.0 0.0 0.5;  % dark pink - Rock
        1.0 0.0 0.5;  % dark pink - Rock
        1.0 0.0 0.5;  % dark pink - Rock         
        1.0 0.0 0.5;  % dark pink - Rock
    ];
    colormap(pinkMap);

    % Forcer l’échelle physique
    caxis([0 1000]);

    % Colorbar compatible Octave
    cb = colorbar;
    set(cb, 'ytick', [0 300 600 1000]);
    set(cb, 'yticklabel', {'0','300-W','600-P','1000-R'});

    xlabel('X (m)');
    ylabel('Y (m)');
end
