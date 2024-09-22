void setup() {
  size(640, 360);
  rectMode(CENTER);
}

void draw() {
  background(0);

  // what is wrong?
  if (mouseX > width / 3) {
    circle(width * .5, height * .5, 100);
  } else if (mouseX > width / 3 * 2) {
    square(width * .5, height * .5, 100);
  } else {
    line(width * .5 - 50, height * .5 - 50,
      width * .5 + 50, height * .5 + 50);
  }

  stroke(127);
  strokeWeight(4);
  line(width / 3, 0, width / 3, height);
  line(2 * width / 3, 0, 2 * width / 3, height);
}
