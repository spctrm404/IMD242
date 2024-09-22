float circleX = 320;

void setup() {
  size(640, 360);
}

void draw() {
  background(0);
  
  noStroke();
  fill(255);
  circle(circleX, mouseY, 50);
  
  circleX = circleX + 1;
}
