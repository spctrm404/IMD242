float rectW, rectH, rectA;

void setup() {
  size(640, 480);

  rectW = 160;
  rectH = 20;
  rectA = 30;

  rectMode(CENTER);
}

void draw() {
  background(255);
  rotate(radians(rectA));
  noFill();
  stroke(0);
  rect(0, 0, rectW, rectH);
  noStroke();
  fill(255, 0, 0);
  circle(0, 0, 10);
  circle(rectW * 0.5, 0, 10);
}
