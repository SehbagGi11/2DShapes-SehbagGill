//Global Variables
int appWidth, appHeight;
//
int reset, smallerGeometryDimension;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
//
void setup()
{
  //Display Geometry
  size(600, 400); //fullScreen(); displayWidth, displayHeight
  //Landscape, not square or portrait
  display();
  population();
  face();
  //
}//End setup
//
void draw()
{
  //Measle
  float measleDiameter = random ( smallerGeometryDimension*1/100, smallerGeometryDimension*1/25);
  float measleRadius = measleDiameter*1/2;
  float measleX = random( rectFaceX+measleRadius, rectFaceX+rectFaceWidth-measleRadius );
  float measleY = random( appHeight*0+measleRadius, appHeight-measleRadius );
  Boolean nightMode=false;
  //color red=#FF0000, measleColour=red;
  color measleColour = ( nightMode==false ) ? color( 255, random(0, 50), random(120) ) : color( 255, random(0, 50), 0 ); //ternary operator for day:night
  color whiteReset=#FFFFFF;
  //
  float measleRectX = measleX-measleDiameter*1/2;
  float measleRectY = measleY-measleDiameter*1/2;
  float measleWidth = measleDiameter;
  float measleHeight = measleDiameter;
  //rect( measleRectX, measleRectY, measleWidth, measleHeight );
  //random values returned given other variables
  noStroke();
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
  //rect(noseX2, noseY1, noseX3-noseX2, noseY3-noseY1);
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  //
  //Mouth
  //rect();
  int mouthWidth = int ( mouthX2 - mouthX1 ); //length=end-beginning
  int mouthHeight = int ( mouthOpen );
  //rect(mouthX1-mouthHeight*1/2, mouthY1-mouthHeight*1/2, mouthWidth+mouthOpen, mouthHeight);
  strokeWeight(mouthOpen);
  line( mouthX1, mouthY1, mouthX2, mouthY2 ); //Notice the END CAPS
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






































//Face: Circle, inscribed in a square
//Center a circle on display orientation (landscape)
rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
ellipse(faceX, faceY, faceDiameter, faceDiameter);
//
//Left Eye
rect(leftEyeX-eyeDiameter*1/2, leftEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
//
//Right Eye
rect(rightEyeX-eyeDiameter*1/2, rightEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
//
//Nose
rect(noseX2, noseY1, noseX3-noseX2, noseY3-noseY1);
triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
//
//Mouth
//rect();
int mouthWidth = int ( mouthX2 - mouthX1 ); //length=end-beginning
int mouthHeight = int ( mouthOpen );
rect(mouthX1-mouthHeight*1/2, mouthY1-mouthHeight*1/2, mouthWidth+mouthOpen, mouthHeight);
strokeWeight(mouthOpen);
line( mouthX1, mouthY1, mouthX2, mouthY2 ); //Notice the END CAPS
strokeWeight(reset); //reset to 1 pixel
//comparison rect() line only, no caps, no strokeWeight
rect(mouthX1, mouthY1, mouthWidth, mouthHeight); 
//
//Measle
float measleDiameter = random ( smallerGeometryDimension*1/100 , smallerGeometryDimension*1/25);
float measleRadius = measleDiameter*1/2;
float measleX = random( rectFaceX+measleRadius, rectFaceX+rectFaceWidth-measleRadius );
float measleY = random( appHeight*0+measleRadius, appHeight-measleRadius );
Boolean nightMode=false;
//color red=#FF0000, measleColour=red;
color measleColour = ( nightMode==false ) ? color( 255, random(0,50), random(120) ) : color( 255, random(0,50), 0 ); //ternary operator for day:night
color whiteReset=#000000;
//
float measleRectX = measleX-measleDiameter*1/2;
float measleRectY = measleY-measleDiameter*1/2;
float measleWidth = measleDiameter;
float measleHeight = measleDiameter;
rect( measleRectX, measleRectY, measleWidth, measleHeight );
//random values returned given other variables
noStroke();
fill(measleColour);
ellipse( measleX, measleY, measleDiameter, measleDiameter );
stroke(reset); //reset to 1 pixel
fill(whiteReset); //reset to first colour (i.e. blackReset)
*/
