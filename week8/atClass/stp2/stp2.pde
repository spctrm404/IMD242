Particle[] p;

void setup() {
  size(800, 800);
  p = new Particle[100];

  for (int idx = 0;
    idx < p.length;
    idx++) {
    p[idx] = new Particle(
      width * 0.5, height * 0.5,
      20, 40,
      5, 10);
  }
}

void draw() {
  background(255);
  for (int idx = 0;
    idx < p.length;
    idx++) {
    p[idx].update();
    p[idx].display();
  }
}
