float squareSize = random(50, 150);
float lineWidth = random(4, 16);

void setup() {
  size(640, 360);
  background(0);
  rectMode(CENTER);
  background(0);
}

void draw() {
  squareSize = random(50, 150);
  lineWidth = random(4, 16);
  strokeWeight(lineWidth);
  stroke(0, 0, 255, 16);
  fill(0, 255, 0, 16);
  square(width * 0.5, height * 0.5, 50);
}
