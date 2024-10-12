int[] fruitAmts;
String[] fruitNames = {"apple",
  "orange",
  "banana",
  "kiwi",
  "peach",
  "plum",
  "tangerine"};

void setup() {
  size(640, 480);
  fruitAmts = new int[fruitNames.length];
  for (int n = 0; n < fruitAmts.length; n++) {
    if (n == 0) {
      fruitAmts[n] = 50;
    } else {
      fruitAmts[n] = int(random(5, 100));
    }
  }
}

float barGap = 88;
float barWidth = 24;
float x = 40;

void draw () {
  background(0);

  strokeWeight(barWidth);

  for (int n = 0; n < fruitNames.length; n++) {
    stroke(255);
    strokeCap(SQUARE);
    textAlign(CENTER);
    textSize(24);
    fill(255, 0, 0);
    line(x + barGap * n, height * 0.5,
      x + barGap * n, height * 0.5 - 2 * fruitAmts[n]);
    text(fruitNames[n],
      x + barGap * n, height * 0.5 + 30);
    text(fruitAmts[n],
      x + barGap * n, height * 0.5 - 2 * fruitAmts[n] - 20);
  }
}
