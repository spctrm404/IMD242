//int fruitAmt;
//String fruitName;
int[] fruitAmts;
String[] fruitNames;

void setup() {
  size(640, 480);
  //fruitAmt = int(random(5, 100));
  //fruitName = "Banana";
  fruitAmts = new int[6];
  fruitAmts[0] =  50;
  fruitAmts[1] =  int(random(5, 100));
  fruitAmts[2] =  int(random(5, 100));
  fruitAmts[3] =  int(random(5, 100));
  fruitAmts[4] =  int(random(5, 100));
  fruitAmts[5] =  int(random(5, 100));
  //for (int n = 0; n < 6; n++) {
  //  if (n == 0) {
  //    fruitAmts[n] = 50;
  //  } else {
  //    fruitAmts[n] = int(random(5, 100));
  //  }
  //}
  fruitNames = new String[6];
  fruitNames[0] = "appple";
  fruitNames[1] = "banana";
  fruitNames[2] = "mango";
  fruitNames[3] = "kiwi";
  fruitNames[4] = "peach";
  fruitNames[5] = "orange";
}

float barGap = 88;
float barWidth = 24;
float x = 80;

void draw () {
  background(0);

  strokeWeight(barWidth);

  //stroke(255);
  //strokeCap(SQUARE);
  //textAlign(CENTER);
  //textSize(24);
  //fill(255, 0, 0);
  //line(x, height * 0.5, x, height * 0.5 - 2 * fruitAmts[0]);
  //text(fruitNames[0], x, height * 0.5 + 30);
  //text(fruitAmts[0], x, height * 0.5 - 2 * fruitAmts[0] - 20);

  //stroke(255);
  //strokeCap(SQUARE);
  //textAlign(CENTER);
  //textSize(24);
  //fill(255, 0, 0);
  //line(x + barGap, height * 0.5, x + barGap, height * 0.5 - 2 * fruitAmts[1]);
  //text(fruitNames[1], x + barGap, height * 0.5 + 30);
  //text(fruitAmts[1], x + barGap, height * 0.5 - 2 * fruitAmts[1] - 20);

  for (int n = 0; n < 6; n++) {
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
