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
  background(255, 0, 0);
  cp.loadPixels();
  // for(let idx = 0; idx < cp.pixels.length; idx++) {
  for (let idx = 0; idx < cp.pixels.length / 4; idx++) {
    // let colour = cp.pixels[idx];
    let r = cp.pixels[4 * idx];
    let g = cp.pixels[4 * idx + 1];
    let b = cp.pixels[4 * idx + 2];
    let a = cp.pixels[4 * idx + 3];
    let br = brightness([r, g, b]);
    let dia = map(br, 0, 255, 0, 20);
    let x = idx % cpW;
    let y = floor(idx / cpW);
    fill(255);
    circle(10 * x + 5, 10 * y + 5, dia);
  }
}
