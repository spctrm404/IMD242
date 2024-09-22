float x, y;
float r, g, b;

void setup() {
  size(640, 360);
  background(0);
  noStroke();
}

void draw() {
  x = random(width);
  y = random(height);
 
  r = random(255);
  g = random(255);
  b = random(255);
  
  fill(r, g, b);
  circle(x, y, 50);
}
