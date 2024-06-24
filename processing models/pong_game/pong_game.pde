int ballSize = 20;
float ballX, ballY;
float ballSpeedX, ballSpeedY;

int paddleWidth = 10;
int paddleHeight = 80;
int leftPaddleY, rightPaddleY;
int paddleSpeed = 5;

boolean isUpKeyPressed, isDownKeyPressed;
boolean isUpArrowPressed, isDownArrowPressed;

void setup() {
  size(800, 400);
  reset();
}

void draw() {
  background(198,242,242);

  // Draw paddles
  fill(255,0,0);
  rect(10, leftPaddleY, paddleWidth, paddleHeight);
  fill(0,0,255);
  rect(width - 20, rightPaddleY, paddleWidth, paddleHeight);

  // Draw ball
  fill(0,255,0);
  ellipse(ballX, ballY, ballSize, ballSize);

  // Move paddles
  if (isUpKeyPressed && leftPaddleY > 0) {
    leftPaddleY -= paddleSpeed;
  }
  if (isDownKeyPressed && leftPaddleY < height - paddleHeight) {
    leftPaddleY += paddleSpeed;
  }

  if (isUpArrowPressed && rightPaddleY > 0) {
    rightPaddleY -= paddleSpeed;
  }
  if (isDownArrowPressed && rightPaddleY < height - paddleHeight) {
    rightPaddleY += paddleSpeed;
  }

  // Update ball position
  ballX += ballSpeedX;
  ballY += ballSpeedY;

  // Ball collision with top and bottom edges
  if (ballY < 0 || ballY > height) {
    ballSpeedY *= -1;
  }

  // Ball collision with paddles
  if (ballX < 10 + paddleWidth && ballY > leftPaddleY && ballY < leftPaddleY + paddleHeight) {
    ballSpeedX *= -1;
  }
  if (ballX > width - 20 - paddleWidth && ballY > rightPaddleY && ballY < rightPaddleY + paddleHeight) {
    ballSpeedX *= -1;
  }

  // Ball out of bounds
  if (ballX < 0 || ballX > width) {
    reset();
  }
}

void keyPressed() {
  if (key == 'w' || key == 'W') {
    isUpKeyPressed = true;
  }
  if (key == 's' || key == 'S') {
    isDownKeyPressed = true;
  }

  if (keyCode == UP) {
    isUpArrowPressed = true;
  }
  if (keyCode == DOWN) {
    isDownArrowPressed = true;
  }
}

void keyReleased() {
  if (key == 'w' || key == 'W') {
    isUpKeyPressed = false;
  }
  if (key == 's' || key == 'S') {
    isDownKeyPressed = false;
  }

  if (keyCode == UP) {
    isUpArrowPressed = false;
  }
  if (keyCode == DOWN) {
    isDownArrowPressed = false;
  }
}

void reset() {
  ballX = width / 2;
  ballY = height / 2;
  ballSpeedX = random(2, 3) * (random(1) > 0.5 ? 1 : -1);
  ballSpeedY = random(2, 3) * (random(1) > 0.5 ? 1 : -1);

  leftPaddleY = height / 2 - paddleHeight / 2;
  rightPaddleY = height / 2 - paddleHeight / 2;
}
