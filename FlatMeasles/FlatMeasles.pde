//Global Variables
int reset, smallerGeometryDimension;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
//
//Display Geometry
size(600, 400); //fullScreen(); displayWidth, displayHeight
//Landscape, square or portrait
int appWidth = width, appHeight = height; //Swap with displayWidth, displayHeight for testing
println(width, height, displayWidth, displayHeight); //Verification of value
println(appWidth, appHeight); //Canvas Flexibility
//
//Display Orientation
//Purpose: a few comparisons of IFs to ID orientation (similar to image() aspect ratio)
//Computer tells us the orientation, important for cell phone orientation
//-tell user specific orientation
//if ( appWidth >= appHeight ) {println("Landscape or Square");} else {println("Portrait");}
String ls="Landscape or Square", p="Portrait", DO="Display Orientation:", instruct="Bru, turn your phun";
String orientation = ( appWidth >= appHeight ) ? ls : p; //Ternary Operator, repeats IF-ELSE
println(DO, orientation); //Verification of value
if ( orientation==p ) println(instruct);
//With Strings, easier to print to console or canvas
//
//Variable Population
smallerGeometryDimension = appHeight; //user told to turn phun, always landscape or square
rectFaceX = appWidth*1/2 - smallerGeometryDimension*1/2;
rectFaceY = appHeight*0;
rectFaceWidth = smallerGeometryDimension;
rectFaceHeight = smallerGeometryDimension;
faceX = appWidth*1/2;
faceY = appHeight*1/2;
faceDiameter = smallerGeometryDimension;
leftEyeX = appWidth*1/2 - smallerGeometryDimension*1/4.9;
leftEyeY = appHeight*1/2 - smallerGeometryDimension*1/4;
rightEyeX = appWidth*1/2 + smallerGeometryDimension*1/4.9;
rightEyeY = leftEyeY;
eyeDiameter = smallerGeometryDimension*1/4;
mouthX1 = leftEyeX;
mouthY1 = appHeight*3/4;
mouthX2 = rightEyeX;
mouthY2 = mouthY1;
mouthOpen = smallerGeometryDimension*1/4;
reset = 1;
noseX1 = faceX;
noseY1 = leftEyeY;
noseX2 = noseX1 - leftEyeY*1/2;
noseY2 = faceY;
noseX3 = noseX1 + leftEyeY*1/2;;
noseY3 = noseY2;
//
//Face: Circle, inscribed in a square
//Center a circle on display orientation (landscape)
rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
ellipse(faceX, faceY, faceDiameter, faceDiameter);
//
//Left Eye
//rect();
ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
//
//Right Eye
//rect();
ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
//
//Nose
//rect();
triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
//
//Mouth
//rect();
strokeWeight(mouthOpen);
line( mouthX1, mouthY1, mouthX2, mouthY2 ); //Notice the END CAPS
strokeWeight(reset); //reset to 1 pixel
//
//Measle
float measleX = random( appWidth*0, appWidth );
float measleY = random( appHeight*0, appHeight );
float measleDiameter = smallerGeometryDimension*1/25;
color red=#FF0000, measleColour=red;
//rect();
fill(measleColour);
ellipse( measleX, measleY, measleDiameter, measleDiameter );
