class Confetties {
  ArrayList<Confetti> confetties;

  Confetties() {
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

  void update(float[] force, float friction) {
    for (int idx = confetties.size() - 1; idx >= 0; idx--) {
      Confetti aConfetti = confetties.get(idx);
      aConfetti.update(force, friction);
      if (aConfetti.isOutOfScreen()) {
        confetties.remove(idx);
      }
    }
  }

  void display() {
    for (int idx = 0; idx < confetties.size(); idx++)
      confetties.get(idx).display();
  }

  int getLength() {
    return confetties.size();
  }
}
