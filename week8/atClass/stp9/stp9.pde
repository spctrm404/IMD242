ArrayList<Circle> circles;
float[] force = {0, 0.1};
float friction = 0.99;
float boundFriction = 1;

void setup() {
  size(600, 600);
  circles = new ArrayList<Circle>();
  Circle aNewCircle = new Circle();
  aNewCircle.init(
    width * 0.5, height * 0.5,
    50);
  circles.add(aNewCircle);
}

void mousePressed() {
  Circle aNewCircle = new Circle();
  aNewCircle.init(
    mouseX, mouseY,
    random(10, 50));
  circles.add(aNewCircle);
}

void draw() {
  background(255);

  for (int idx = 0;
    idx < circles.size();
    idx++) {
    Circle aCircle = circles.get(idx);
    for (int oIdx = idx + 1;
      oIdx < circles.size();
      oIdx++) {
        aCircle.collide(circles.get(oIdx), 0.9);
    }
    aCircle.update(force, friction);
    aCircle.boundary(boundFriction);
    aCircle.display();
  }
}
