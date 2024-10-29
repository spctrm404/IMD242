Circle aCircle;

void setup() {
  size(600, 600);
  aCircle = new Circle();
  aCircle.init(
    width * 0.5, height * 0.5,
    50);
}

void draw() {
  background(255);
  
  aCircle.display();
}
