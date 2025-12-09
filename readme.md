# 2D Resistivity Map Plotter

This project provides a set of Octave/MATLAB scripts to visualize 2D resistivity data from a CSV file. It generates a filled contour plot to represent the resistivity distribution over a 2D grid.

## Prerequisites

You need to have one of the following installed to run the scripts:
- [MATLAB](https://www.mathworks.com/products/matlab.html)
- [GNU Octave](https://www.gnu.org/software/octave/)

## Project Files

The project consists of the following main files:

- `generate2DData.m`: A script to generate random 2D resistivity data and save it to a CSV file.
- `generate3DData.m`: A script to generate random 3D resistivity data and save it to a CSV file.
- `plotSingle2D.m`: The main script to generate a plot from a single data file. It reads the data and creates a new figure for the plot.
- `plotMultiple2D.m`: The main script to generate a plot from multiple data files. It reads the data and creates a new figure for the plot. It also allows to compare the data from different files.
- `plot2DResistivity.m`: A helper function that handles the actual plotting. It creates a 2D interpolated grid and plots the data as a filled contour map.

## Data Format

The input data should be a CSV file with three columns, separated by semicolons (`;`).

1.  **X-coordinate**: The X position of the measurement.
2.  **Y-coordinate**: The Y position of the measurement.
3.  **Resistivity**: The measured resistivity value at that (X, Y) coordinate.

Example `data.csv`:
```csv
0;0;100
0;1;110
1;0;105
1;1;115
```

## Usage

1.  Open MATLAB or Octave.
2.  Navigate to the `Code` directory.
3.  Call the desired function with the appropriate arguments.

### Data Generation (Example for 2D)

Use `generate2DData` to create a new CSV data file. The function takes the output filename, maximum X value, X step, Y step, and maximum resistivity value as arguments.

```matlab
% Example for generating data:
% generate2DData(filename, n, step_x, step_y, max_value)
generate2DData('../Data/nappes2D.csv', 5, 0.5, 0.2, 4200);
```

### Plotting Resistivity Map (Single 2D)

Use `plotSingle2D` to visualize an existing CSV data file.

```matlab
% Example for plotting:
plotSingle2D('../Data/nappes2D.csv');
```

This will create and display a new figure with the 2D resistivity map.
