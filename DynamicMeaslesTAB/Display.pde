void display() {
  //
  appWidth = width;//Swap with displayWidth, displayHeight for testing
  appHeight = height; 
  println(width, height, displayWidth, displayHeight); //Verification of value
  println(appWidth, appHeight); //Canvas Flexibility
  //
  //Display Orientation
  //Purpose: a few comparisons of IFs to ID orientation (similar to image() aspect ratio)
  //Computer tells us the orientation, important for cell phone orientation
  //-tell user specific orientation
  //if ( appWidth >= appHeight ) {println("Landscape or Square");} else {println("Portrait");}
  String ls="Landscape or Square", p="Portrait", DO="Display Orientation:", instruct="Turn your phone bud";
  String orientation = ( appWidth >= appHeight ) ? ls : p; //Ternary Operator, repeats IF-ELSE
  println(DO, orientation); //Verification of value
  if ( orientation==p ) println(instruct);
  //With Strings, easier to print to console or canvas
  //
}//End display
