int[] colours = {
  0xFF257180,
  0xFFF2E5BF,
  0xFFFD8B51,
  0xFFCB6040
};
float[] gravity = {0, 0.1};
float friction = 0.99;
int cnt = 0;
int[] mouse = {0, 0};

Confetties confetties;

void setup() {
  size(800, 800);
  confetties = new Confetties();
}

void mousePressed() {
  cnt = 0;
  mouse[0] = mouseX;
  mouse[1] = mouseY;
}

void mouseReleased() {
  println("gen: " + cnt);
  confetties.gen(mouse[0], mouse[1], cnt);
}

void keyPressed() {
  if (key =='p' || key =='P')
    println("confetties: " + confetties.getLength());
}

void draw() {
  if (mousePressed) {
    cnt++;
  }
  background(255);
  confetties.update(gravity, friction);
  confetties.display();
}
