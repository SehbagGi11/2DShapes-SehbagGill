//Global Variables
int reset, smallerDisplayDimesion, mouthOpen;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter; 
float mouthX1, mouthY1, mouthX2, mouthY2;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;
//
float measleDiameter, measleRadius, measleX, measleY;
Boolean nightMode=false;
color measleColour, whiteReset;
float measleRectX, measleRectY, measleWidth, measleHeight;
//
void setup()
{
  //Display Geomtery
fullScreen(); //displayWidth, displayHeight
  //Landscape, not square or portrait
  int appWidth = width, appHeight = height; //Swap with displayWidth, displayHeight for testing
  println (width, height, displayWidth, displayHeight); //Verification of values
  println(appWidth, appHeight); //Canvas Flexibility
  //
  //Display Orientation
  //Purpose: a few comparisons of IFs to ID orientation (similar to image() aspect ratio calculations)
  //Computer Tells us the orientation, important for Cell Phone Orientation
  //-tell user specific orientation
  //if ( appWidth >= appWidth ) {println("Landscape or Square");} else {println("Portrait");}
  String ls="Landscape or Square", p="Portrait", DO="Display Orientation:", instruct="Turn your phone bud";
  String orientation = ( appWidth >= appHeight ) ? ls : p; //Ternary Operator, repeats IF-ELSE
  println(DO, orientation); //Verification of value
  if ( orientation==p ) println(instruct);
  //With Strings, easier to print to console or canvas
  /* if ( orientation=="Landscape or Square" ) {
   //Empty IF
   } else { 
   println("Turn your phun"); //FUN
   }
   */
  //
  //Variable Population: notice using appWidth & appHeight to move between size() & fullScreen()
  smallerDisplayDimesion = appHeight; //ALWAYS in Landscape
  reset = smallerDisplayDimesion / smallerDisplayDimesion; //returns "1"
  rectFaceX = (appWidth*1/2) - (smallerDisplayDimesion*1/2);
  rectFaceY = appHeight*0;
  rectFaceWidth = smallerDisplayDimesion; //Square Shape
  rectFaceHeight = smallerDisplayDimesion; //Square Shape
  faceX = appWidth*1/2;
  faceY = appHeight*1/2;
  faceDiameter = smallerDisplayDimesion;
  leftEyeX = appWidth*1.4/4;
  rightEyeX = appWidth*2.6/4;
  leftEyeY = appHeight*1/4;
  rightEyeY = leftEyeY; //Best Practice: change one line of code
  eyeDiameter = smallerDisplayDimesion*1/4;
  mouthX1 = leftEyeX;
  mouthY1 = appHeight*3/4;
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  mouthOpen = smallerDisplayDimesion*1/4;
  xNose1 = faceX;
  yNose1 = leftEyeY;
  xNose2 = faceX - leftEyeY*1/2;
  yNose2 = faceY ;
  xNose3 = faceX + leftEyeY*1/2;
  yNose3 = faceY ;
  //
  //Face: Circle = Inscribing a Circle in a Square
  //Center a circle on display orientation
  //rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  //
}//End setup
//
void draw()
{
  //Measle
  measleDiameter = random( smallerDisplayDimesion*1/100, smallerDisplayDimesion*1/25); //Range of measle size: small=*1/100, large=4xbigger (*1/25)
  measleRadius = measleDiameter*1/2;
  measleX = random( rectFaceX+measleRadius, (( rectFaceX+rectFaceWidth ) - measleRadius ) );
  measleY = random( rectFaceY+measleRadius, (( rectFaceY+rectFaceHeight ) - measleRadius ) );
  nightMode=false; //Note: IF-ELSE similar to ternary operator
  measleColour = ( nightMode==false ) ? color( 255, random(0, 50), random(120) ) : color( 255, random(0, 50), 0 ) ; //ternary operator for day:night
  whiteReset=#FFFFFF;
  //
  measleRectX = measleX-measleDiameter*1/2;
  measleRectY = measleY-measleDiameter*1/2;
  measleWidth = measleDiameter;
  measleHeight = measleDiameter;
  //rect( measleRectX, measleRectY, measleWidth, measleHeight );
  //random values given other variables (similar to button code)
  noStroke(); //Shape outline
  fill(measleColour);
  ellipse( measleX, measleY, measleDiameter, measleDiameter ); 
  stroke(reset); //reset to 1 pixel
  fill(whiteReset); //reset to first colour (i.e. blackReset)
  //
  //Left Eye
  //rect(leftEyeX-eyeDiameter*1/2, leftEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  //
  //Right Eye
  //rect(rightEyeX-eyeDiameter*1/2, rightEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  //
  //Nose
  //rect(xNose2, yNose1, xNose3-xNose2, yNose3-yNose1);
  triangle(xNose1, yNose1, xNose2, yNose2, xNose3, yNose3);
  //
  //Mouth
  int mouthWidth = int ( mouthX2 - mouthX1 ); //length=end-beginning
  int mouthHeight = mouthOpen;
  //rect(mouthX1-mouthHeight*1/2, mouthY1-mouthHeight*1/2, mouthWidth+mouthOpen, mouthHeight);
  strokeWeight(mouthOpen); //testing: 100=400/4, mouthOpen=height*1/4
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset); //reset to 1 pixel
  //comparison rect() line only, no caps, no strokeWeight
  //rect(mouthX1, mouthY1, mouthWidth, mouthHeight); 
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End Main Program
