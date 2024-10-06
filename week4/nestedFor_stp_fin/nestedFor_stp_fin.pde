float spacing;
float rad;

void setup() {
  size(640, 480);
  fill(255);
  noStroke();
  spacing = 20;
  rad = 8;
}

void draw() {
  background(0);

  for(int y = 0; y < height; y += spcaing) {
    for (int x = 0; x < width; x += spacing) {
      circle(x + spacing * 0.5, y + spacing * 0.5, 2 * rad);
    }
  }
}