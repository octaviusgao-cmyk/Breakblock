void game() {
  background(gray);
  stroke(0);
  fill(255);
  circle(leftx, lefty, leftd);

  //bricks
  

  int i = 0;
  while (i < n) {
    if (alive[i] == true) {
      manageBrick(i);
    }
    i++;
  }



  //ball
  fill(255);
  circle(ballx, bally, balld);

  if (bally < balld/2) {
    vy = vy * -1;
  }
  if (ballx < balld/2 || ballx > width-balld/2) {
    vx = vx * -1;
  }

  if (dist(leftx, lefty, ballx, bally) <= leftd/2 + balld/2) {
    vx = (ballx - leftx)/a;
    vy = (bally - lefty)/a;
  }
  ballx = ballx + vx;
  bally = bally + vy;
  //move paddle
  if (akey == true) leftx = leftx - 15;
  if (dkey == true) leftx = leftx + 15;
  
  if (bally > 900) {
    lives = lives - 1;
    bally = width/2;
    ballx = height/2;
  }
  fill(blue);
  text("Score: " + score, 200, 700);
  text("Lives: " + lives, 200, 800);
  if (lives == 0) {
    mode = gameover;
  }
  if (score == 1) {
    mode = gameover;
  }
}


void gameClicks() {
  mode = pause;
}

void manageBrick (int i) {

  if (y[i] == 100) fill(red);
  if (y[i] == 200) fill(white);
  if (y[i] == 300) fill(red);
  if (y[i] == 400) fill(darkred);
  if (y[i] == 500) fill(blue);

  circle(x[i], y[i], brickd);
  if (dist(ballx, bally, x[i], y[i]) <= brickd/2 + balld/2) {
    vx = (ballx - x[i])/5;
    vy = (bally - y[i])/5;
    alive[i] = false;
    score++;
  }
}
