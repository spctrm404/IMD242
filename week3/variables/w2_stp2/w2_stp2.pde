float circleX;

void setup() {
  size(640, 360);
  circleX = 320;
}

void draw() {
  background(0);
  
  noStroke();
  fill(255);
  circle(circleX, mouseY, 50);
}
