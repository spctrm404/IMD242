void setup() {
  size(640, 360);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(0);

  if (mouseX > width * .5 - 50) {
    if (mouseX < width * .5 + 50) {
      fill(255, 0, 0);
    } else {
      fill(255);
    }
  } else {
    fill(255);
  }

  square(width * 0.5, height * 0.5, 100);
}
