void game() {
  background(0);
  stroke(0);
  fill(255);
  circle(leftx, lefty, leftd);

  //bricks
  circle(x[0], y[0], brickd);
  circle(x[1], y[1], brickd);
  circle(x[2], y[2], brickd);

  int i = 0;
  while (i < n) {
    if (y[i] == 100) fill(255); 
    if (y[i] == 200) fill(0);
    if (y[i] == 300) fill(50);
    if (y[i] == 400) fill(9);
    if (y[i] == 500) fill(0);
    
    circle(x[i], y[i], brickd);
    if (dist(ballx, bally, x[i], y[i]) <= brickd/2 + balld/2) {
      vx = (ballx - x[i])/5;
      vy = (bally - y[i])/5;
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
}


void gameClicks() {
}
