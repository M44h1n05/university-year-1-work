class Plane {

  final int x = 50; // final variables are known as constants - values that will not change after being initialised
  int y;
  PImage img = loadImage("plane.png");

  Plane(int y) {
    this.y = y;
  }

  void render() {
    image(img, x, y);
  }

  boolean crash(Bird bird) {
    // return the result of checking if the plane has crashed into the bird
    return abs(this.x-bird.x) < img.width && abs(this.y - bird.y) < img.height;
  }
}
