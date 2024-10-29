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

ArrayList<Confetti> confetties;

void setup() {
  size(800, 800);
  confetties = new ArrayList<Confetti>();
}

void gen(float x, float y, float n) {
  for (int idx = 0; idx < n; idx++) {
    float randomW = random(4, 20);
    float randomH = random(4, 20);
    float randomForce = random(1, 10);
    float randomAngForce = random(-30, 30);
    Confetti newConfetti = new Confetti(x, y,
      randomW, randomH,
      colours[int(random(colours.length))],
      randomForce, randomAngForce);
    confetties.add(newConfetti);
  }
}



void mousePressed() {
  cnt = 0;
  mouse[0] = mouseX;
  mouse[1] = mouseY;
}

void mouseReleased() {
  println("gen: " + cnt);
  gen(mouse[0], mouse[1], cnt);
}

void keyPressed() {
  if (key =='p' || key =='P')
    println("confetties: " + confetties.size());
}

void draw() {
  if (mousePressed) {
    cnt++;
  }
  background(255);
  for (int idx = confetties.size() - 1; idx >= 0; idx--) {
    Confetti aConfetti = confetties.get(idx);
    aConfetti.update(gravity, friction);
    if (aConfetti.isOutOfScreen()) {
      confetties.remove(idx);
    }
  }
  for (int idx = 0; idx < confetties.size(); idx++)
    confetties.get(idx).display();
}
