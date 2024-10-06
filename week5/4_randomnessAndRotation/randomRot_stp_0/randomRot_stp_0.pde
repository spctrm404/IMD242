float tileW, tileH;
int randomSeed = 0;

void setup() {
  size(800, 800);

  tileW = 40;
  tileH = 40;

  rectMode(CENTER);
}

void mousePressed() {
  randomSeed = int(random(1000));
  println(randomSeed);
}

void draw() {
  randomSeed(randomSeed);

  background(0);

  for (int n = 0; n < 100; n++) {
    pushMatrix();
    translate(random(width), random(height));
    rotate(radians(random(360)));
    stroke(255);
    strokeWeight(4);
    fill(random(255), random(255), random(255));
    rect(0, 0, tileW, tileH);
    noFill();
    stroke(255);
    strokeWeight(1);
    line(0, 0, tileW * 0.5, 0);
    popMatrix();
  }
}
