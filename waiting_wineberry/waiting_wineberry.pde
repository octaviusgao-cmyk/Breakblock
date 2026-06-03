int mode;
final int intro = 1;
final int game = 2;
final int pause = 3;
final int gameover = 4;

float ball, ballD;
float ballMove;
float vx, vy;
float ballx, bally, balld;
float leftx, lefty, leftd;
float a;

boolean akey, dkey;
void setup() {
  background(0);
  
  textAlign(CENTER);
  imageMode(CENTER);
  
  size(900, 900);
  mode = game;
  
  a = 10;
 
  
  ballx = width/2;
  bally = height/2;
  balld = 50;
  
  leftx = 450;
  lefty = 900;
  leftd = 150;
  
  vy = random(-5, 5);
}
  
  void draw() {
   if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == pause) {
    pause();
  } else if (mode == gameover) {
    gameover();
  } else {
    println("Error; Mode = " + mode);
  }
}
