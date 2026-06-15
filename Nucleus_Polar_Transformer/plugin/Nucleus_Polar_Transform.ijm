//Get values for Image Title and Save Folder, set measurement to include centroid
name = getTitle()+"_Polar";
Save_Folder = getDirectory("image");
run("Set Measurements...", "area centroid redirect=None decimal=3");
//Create a default ROI and enlarge image to see clearer and position to the middle of the stack (assuming 20 slices)
//User needs to crop to a single nucleus with a small amount of border space
makeRectangle(3, 4, 110, 110);
run("In [+]");
run("In [+]");
Stack.setSlice(10);
waitForUser("Crop to nucleus", "Draw box around nucleus");
//Creates a crop of the nucleus, creates a maximum projection
run("Crop");
run("Z Project...", "projection=[Max Intensity] all");
//Comment out if working with single channel images
run("Split Channels");
//Closes channel 2 image for just channel 1. Comment out if working with single channel or your nucleus channel is in channel 2 
close();
//Rescale and apply Gaussion blur to reduce noise. Li threshold to automatically detect nucleus
run("Scale...", "x=- y=- z=1.0 width=800 height=800 depth=21 interpolation=Bilinear average process create");
run("Grays");
run("Gaussian Blur...", "sigma=4 stack");
run("Threshold...");
setAutoThreshold("Li dark");
waitForUser("Set threshold", "Adjust threshold");
run("Set Scale...", "distance=0 known=0 unit=pixel");
roiManager("reset");
//Identifies primary nucleus across all frames
run("Analyze Particles...", "size=6000-Infinity clear add stack");
//Creates an nucleus Outline image for output
newImage("Outline_Stack", "8-bit color-mode", 800, 800, 1, 1, 21);
selectWindow("Outline_Stack");
for (i=0; i<roiManager("count"); i++) {
    selectWindow("Outline_Stack");
    roiManager("select", i);
    run("Flatten", "slice");
    }
selectWindow("Outline_Stack");
close();
run("Images to Stack", "name=Outlines title=Outline_Stack-");
selectWindow("Outlines");
//Performs the polar transformation using the centroid of the nucleus in frame 1 and repeats across whole image stack
Centroid_x = getResult("X", 1);
Centroid_y = getResult("Y", 1);
n = nSlices;
for (i = 1; i <= n; i++) {
selectWindow("Outlines");
setSlice(i);
run("Polar Transformer", "method=Polar degrees=360 for_polar_transforms, center_x=&Centroid_x center_y=&Centroid_y");
rename("Slice#"+i);
}
run("Images to Stack", "title=Slice use");
rename("Polar_Stack");
//Creates a skeletonised version of the polar transformed nuclear outline and saves the output data file and tiff image. You need to choose the folder the data file is saved in
run("8-bit");
setOption("BlackBackground", false);
run("Convert to Mask", "method=Default background=Dark calculate");
run("Skeletonize", "stack");
run("Rotate 90 Degrees Right");
rename(name);
saveAs("Tiff", Save_Folder + File.separator + name);
run("Save XY Coordinates...", "background=0 invert process");
close();
//Saves the outline image
selectWindow("Outlines");
saveAs("Tiff", Save_Folder + File.separator + name + "_Outlines");
run("Close All");
exit
