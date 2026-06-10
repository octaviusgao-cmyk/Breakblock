void pause() {
  //theme.pause();
  text("PAUSE", 450, 450);
  fill(red);
  tactile(350, 500, 200, 100);
  rect(350, 500, 200, 100);
  fill(blue);
  text("continue", 450, 560);
}

void pauseClicks() {
  if (mouseX > 350 && mouseX < 550 && mouseY > 500 && mouseY < 600) {
    mode = game;
  }
}
