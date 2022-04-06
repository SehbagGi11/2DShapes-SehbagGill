void population() {
  //
  smallerGeometryDimension = appHeight; //user told to turn phun, always landscape or square
  reset = smallerGeometryDimension / smallerGeometryDimension; // returns "1" //default value for reseting parameters
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
  noseX1 = faceX;
  noseY1 = leftEyeY;
  noseX2 = noseX1 - leftEyeY*1/2;
  noseY2 = faceY;
  noseX3 = noseX1 + leftEyeY*1/2;
  noseY3 = noseY2;
  //
}//End population
