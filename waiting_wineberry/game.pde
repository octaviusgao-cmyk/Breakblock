void game() {
  stroke(0);
  fill(255);
  circle(leftx, lefty, leftd);
  
  //ball
  fill(255);
  circle(ballx, bally, balld);
  
  if (bally < balld/2 || bally > width-balld/2) {
    vy = vy * -1;
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


void gameClicks() {}
