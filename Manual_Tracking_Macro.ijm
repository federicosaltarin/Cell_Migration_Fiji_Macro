///author: Federico Saltarin///
///////////////////////////////////////////////////////////////////////////////////////

//Here you can set the slices where you want to measure
start_slice = 30;
end_slice = 40;
//Here you can set how many cells and the experimental condition
n_cells = 5;
condition = "Ctl";
//And here you can change your output full path
output_file = "/home/fede/Desktop/Log.csv";

//This will print the header
print("Condition", "ID","X", "Y", "Slice" );

//This is the core tracking function
for (j = 1; j < n_cells+1; j++) {
	setSlice(start_slice);
	waitForUser("Waiting for user", "Go to the cell and press Enter to Start:");
	n = -1;
   	for  (i = start_slice; i < end_slice+1; i++) {
    	setSlice(i);
    	wait(250);
    	getCursorLoc(x, y, z, flags);
    	n = n+1;
    	print(condition, "Cell_"+j,x,y,n);
    	wait(250);
    }
}
//Finally we save the results
selectWindow("Log");
saveAs("Text", output_file);