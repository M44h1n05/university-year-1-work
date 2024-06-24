void setup()
{
  background(3, 223, 252);
}

float x = 100;
float cloudSize = 100;

void draw() {
  background(3, 223, 252); 
  cloud(x);
  x = x + 1; 
  if (x > width + cloudSize) {
    x = - cloudSize; 
  }
}

void cloud(float xPos) {
  ellipse(xPos - 20, 20, 15, 15);
  ellipse(xPos - 30, 20, 10, 10);
  ellipse(xPos - 10, 20, 7, 7);
}
