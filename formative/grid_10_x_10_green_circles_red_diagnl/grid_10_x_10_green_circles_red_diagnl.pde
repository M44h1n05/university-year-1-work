int gridSize = 10;
int circleSize;

void setup() {
  size(100, 100);
  circleSize = width / gridSize;
}

void draw() {
  for (int i = 0; i < gridSize; i++) {
    for (int j = 0; j < gridSize; j++) {
      int x = i * circleSize + circleSize / 2;
      int y = j * circleSize + circleSize / 2;
      
      if (i == j) {
        fill(255, 0, 0); // red
      } else {
        fill(0, 255, 0); //green
      }
      
      ellipse(x, y, circleSize, circleSize);
    }
  }
}
