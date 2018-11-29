float xPos = width/2;
int yPos = height/2;

float dx;
float angle;

void setup() {
  size(1000, 800);
  angle = 0;
  dx = 6.5;

}

void draw() {
  ellipse(width/2, height/2, 50,50);
  rectMode(CENTER);
  angle+=dx;
  //if(angle>3000){
  //  angle = -angle;
  //}
//if(angle>0){
//    int c = int(map(angle, 0, 3000, 0, 255));
//    fill(0,c,c);
//  } else if(angle<0){
//    int c = int(map(angle, -3000, 0, 255, 0));
//    fill(0,c,c);
//  }
  float oscillateFill = map(sin(angle), -1, 1, 10, 100);
  fill(0,oscillateFill,oscillateFill+map(mouseX,0,width,0,40));
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(angle)*.3);
  rect(xPos, yPos, 10, width*cos(angle));
  popMatrix();
  //int r = int(map(angle, 0, -3000, 0, 255));
  println(angle);
}
