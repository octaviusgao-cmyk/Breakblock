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
float brickd;
int n;
int tempx, tempy;
PImage[] gif;
PImage[] gif2;
int numberOfFrames;
int f;
int score, lives;

//colors
color gray = #8b969c;
color white = #dce1e5;
color red = #ad1d1a;
color darkred = #8B160D;
color blue = #276079;

PImage ciri;
PImage sigh;


//brick variables
int[] x;  //declaration
int[] y;

boolean[] alive;
boolean akey, dkey;
void setup() {
  background(#24DEB1);

  textAlign(CENTER);
  imageMode(CORNER);

  size(900, 900);
  mode = intro;

  score = 0;
  lives = 3;

  a = 10;

  brickd = 50;
  n = 40;

  ballx = width/2;
  bally = height/2;
  balld = 20;

  leftx = 450;
  lefty = 900;
  leftd = 150;

  vy = random(5, 10);

  //array of bricks
  x = new int[n];  //instantiation
  y = new int[n];
  alive = new boolean[n];

  ciri = loadImage("ciri.png");
  sigh = loadImage("sigh.png");
  
  tempx = 100;
  tempy = 100;

  int i = 0;
  while (i < n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx + 100;
    if (tempx == width) {
      tempx = 100;
      tempy = tempy + 100;
    }
    i++;
  }
  numberOfFrames = 47;
  gif = new PImage[numberOfFrames];

  i = 0;
  while (i < numberOfFrames) {
    gif[i] = loadImage("frame_"+i+"_delay-0.04s.gif");
    gif[i].resize(width, height);
    i++;
  }
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
