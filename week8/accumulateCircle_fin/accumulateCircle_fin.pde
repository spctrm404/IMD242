ArrayList<Circle> circles;
float[] gravity = {0, 0.1};
float airFriction = 0.99;
float boundFriction = 0.8;
float collideFriction = 0.5;

void setup() {
  size(800, 800);
  
  circles = new ArrayList<Circle>();
}

void mousePressed() {
  circles.add(new Circle(mouseX, mouseY, random(10, 50)));
}

void draw() {
  background(255);
  for (int idx = 0; idx < circles.size(); idx++) {
    Circle aCircle = circles.get(idx);
    aCircle.update(gravity, airFriction);
    for (int otherIdx = idx + 1;
      otherIdx < circles.size();
      otherIdx++) {
      aCircle.collide(circles.get(otherIdx), collideFriction);
    }
    aCircle.boundary(boundFriction);
    aCircle.display();
  }
}
