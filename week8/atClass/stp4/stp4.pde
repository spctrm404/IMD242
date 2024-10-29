//Particle particle;
ArrayList<Particle> particles;

void setup() {
  size(800, 800);
  //particle = new Particle(width * 0.5, height * 0.5,
  //20, 40,
  //5, 10);
  particles = new ArrayList<Particle>();
}

void mousePressed() {
  Particle aNewParticle = new Particle(
    mouseX, mouseY,
    20, 40,
    5, 10);
  particles.add(aNewParticle);
  println(particles.size());
}

void draw() {
  background(255);
  //particle.update();
  //particle.display();
  for (int idx = 0; idx < particles.size(); idx++) {
    Particle aParticle = particles.get(idx);
    aParticle.update();
    aParticle.display();
  }
}
