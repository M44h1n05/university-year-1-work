int cols = 5;
int rows = 5;
int squareSize;

void setup() {
  squareSize = width / cols;
}

void draw() {
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      float x = i * squareSize;
      float y = j * squareSize;
      circlewsquare(x, y, squareSize);
    }
  }
}

void circlewsquare(float x, float y, int size) {
  rect(x, y, size, size);
  ellipse(x + size / 2, y + size / 2, size / 2, size / 2);
}
