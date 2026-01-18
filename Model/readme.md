# Image Processing Model (Python)

This section analyze the generated plots using an image processing model to detect groundwater and rank the most promising areas for exploration.

## Required Configuration

The following environment is required to run the notebook:

- **Python 3.x**
- **Jupyter Notebook**
- **Libraries**:
  - `opencv-python`
  - `numpy`

Installation command:

```bash
pip install opencv-python numpy
```
or run only the installation part in the code

## Content of .ipynb description (What the code does)

The code performs the following steps to detect and quantify specific zones in the image:

1.  **Setup**: Installs and imports necessary libraries (`cv2`, `numpy`).
2.  **Input**: Loads the 2D plot image (e.g., `../Plot/plotSingle2DforModel.png`).
3.  **Color Segmentation**:
    - Converts the image to HSV color space. (for water detection)
    - Creates a mask using specific color thresholds to isolate regions of interest (e.g., specific resistivity values).
4.  **Zone Detection**:
    - Finds contours within the masked area. (used to find the countours of groundwater)
    - Calculates the area of each contour and filters out small noise.
    - Computes the center (centroid) of each zone.
5.  **Visualization & Reporting**:
    - Draws contours around detected zones on the image.
    - Annotates the zones with IDs.
    - Appends a text panel to the image displaying the list of detected zones and their calculated areas in pixels.
