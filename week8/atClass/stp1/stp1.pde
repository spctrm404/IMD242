Particle p;

void setup() {
  size(800, 800);
  p = new Particle(
    width * 0.5, height * 0.5,
    20, 40,
    5, 10);
}

void draw() {
  background(255);
  //p.update();
  p.display();
}
