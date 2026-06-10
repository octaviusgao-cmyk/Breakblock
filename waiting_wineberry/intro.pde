void intro() {
  image(gif[f], 0, 0);
  if (frameCount % 2 == 0) {
    f++;
  }
  if (f == numberOfFrames) {
    f = 0;
  }

  fill(red);
  textSize(110);
  text("GWENT BREAKOUT", 450, 200);

  tactile(300, 600, 300, 100);
  rect(300, 600, 300, 100);
  textSize(60);
  fill(blue);
  text("START", 450, 675);
}

void introClicks() {
  if (mouseX > 300 && mouseX < 600 && mouseY > 600 && mouseY < 700) {
    mode = game;
  }
}

void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(255);
  } else {
    stroke(red);
    strokeWeight(3);
  }
}
