int[] colours = {
  0xFFFF885B,
  0xFFFFE5CF,
  0xFF557C56,
  0xFF33372C
};

Ball snow;

void setup() {
  size(600, 400);
  snow = new Ball(
    width * 0.5, height * 0.5,
    10,
    25,
    colours[0]);
}

void draw() {
  snow.update();
  snow.bound();
  background(255);
  snow.display();
}
