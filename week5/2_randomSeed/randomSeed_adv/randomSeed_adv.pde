int numCircle = 500;
int circleRad = 50;
int randomSeed = 0;
int lifeSpan = 300;
int life = lifeSpan;

void mousePressed() {
  life = lifeSpan;
}

void keyPressed() {
  if (keyCode == LEFT) {
    randomSeed--;
    life = lifeSpan;
  } else if (keyCode == RIGHT) {
    randomSeed++;
    life = lifeSpan;
  }
  if (randomSeed < 0) {
    randomSeed = 0;
  }
}

void setup() {
  size(800, 800);

  background(0);
  noStroke();
}

void draw () {
  background(0);

  life--;
  randomSeed(randomSeed);
  if (life >= 0) {
    for (int n = 0; n < numCircle; n++) {
      float x = random(width);
      float y = random(height);
      fill(random(255), random(255), random(255));
      circle(x, y, life / float(lifeSpan) * 2 * circleRad);
    }
  }
}
