# Cell Migration Fiji Macro
A simple and light macro for manual tracking in ImageJ. You just need to set the slices (timepoints) that you want to track,the condition and number of cells.
When you are ready yo run the macro and you just need to follow the cell with the cursor. The X and Y coordinates will be saved automatically ina CSV file, along with the information on cell ID(number), condition and slice.
Then the data can be analyzed and visualized.
Interesting parameters are traveled distance, velocity, speed and directionality.
A good high-throughput alternative is to use CellProfiler but for quick semi-manual results, this macro is very useful (e.g. tracking brightfield images).
I normally analyze the results via R: see https://github.com/federicosaltarin/Cell_Migration_Analysis
