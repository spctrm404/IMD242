float x = 0;

void setup() {
  size(640, 360);
  noStroke();
}

void draw() {
  background(0);

  fill(255);
  
  circle(x, height * 0.5, 50);
  
  // make it faster, make it add 7
  x += 2;
  
  if(x == width) {
    x = 0;
  }
}
