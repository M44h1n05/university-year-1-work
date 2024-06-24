Plane player;
Bird bird1, bird2;
PImage backGround;
int bgX = 0;

// variables to represent state of the game
final int PLAYING = 0;
final int FINISHED = 1;
int gameMode = PLAYING;

void setup() {
  size(800, 500);
  backGround = loadImage("skybg.jpg");
  backGround.resize(width, height);

  player = new Plane(height/2);
  bird1 = new Bird(850, (int)random(380));
  bird2 = new Bird(875, (int)random(380));
}

void draw() {
  if (gameMode == PLAYING) {
    image(backGround, bgX, 0); //draw background twice
    image(backGround, bgX+backGround.width, 0);
    bgX -=4; //move background 4 pixels to left
    if (bgX == -backGround.width) {
      bgX=0; //wrap background
    }
    player.render();
    bird1.update();
    bird2.update();

    if (player.crash(bird1) || player.crash(bird2)) {
      gameMode = FINISHED;
    }
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP && player.y > 0) {
      player.y -= 5;
    } else if (keyCode == DOWN && player.y < height-125) {
      player.y += 5;
    }
  }
}
