let cp;
let canvasW, canvasH;
let scale;
let cpW, cpH;

function setup() {
  canvasW = 640;
  canvasH = 480;
  createCanvas(canvasW, canvasH);

  scale = 0.1;
  cpW = canvasW * scale;
  cpH = canvasH * scale;
  cp = createCapture(VIDEO);
  cp.size(cpW, cpH);
  cp.hide();
}

function draw() {
  background(0);
  // image(cp, 0, 0, width, height);
  noStroke();
  for (let y = 0; y < cpH; y++) {
    for (let x = 0; x < cpW; x++) {
      let colour = cp.get(x, y);
      let b = brightness(colour);
      let diameter = map(b, 0, 255, 0, 40);
      fill(255);
      circle(10 * x + 5, 10 * y + 5, diameter);
      // fill(colour[0], colour[1], colour[2]);
      // circle(10 * x + 5, 10 * y + 5, 10);
    }
  }
}
