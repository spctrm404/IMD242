float circleX = random(0, 640);

void setup() {
  size(640, 360);
}

void mousePressed() {
  circleX = 0;
}

void draw() {
  println(circleX);
  
  background(0);
  
  noStroke();
  fill(255);
  circle(circleX, mouseY, 50);
  
  circleX = circleX + 1;
}
