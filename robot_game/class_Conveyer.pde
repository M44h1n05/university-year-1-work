public class Conveyor //public class so code can be called from other classes and main code by encapsualtion
{
  PImage conveyerimg; //named variable of the image
  int conveyerSpeed = 2;  // variable assigned value as integer for Speed of conveyer
  int x1, x2; //integers for 2 varaibles

  Conveyor() //built constructor
  {
    conveyerimg = loadImage("conveyer.png");  // Load the conveyor belt image from data folder saved with code
    x1 = 0;  // set the position for conveyor
    x2 = width; // same as line above but this sets at width so canvas width is 1000 so 1000
  }

  void move() //function made to be called via encapsation throught the code will go into the -- todo function().
  {
    x1 -= conveyerSpeed;  // move the first conveyor belt .image.
    x2 -= conveyerSpeed;  // move the second conveyor belt .image.

    if (x1 + 1280 < 0) //check if the first conveyr has moved off screen 
    {
      x1 = x2 + 1280;  // overalap the first conveyor belt image when it goes off screen
    }

    if (x2 + 1280 < 0)  //check if the second conveyor has moved off screen 
    {
      x2 = x1 + 1280;  // overlap the the second conveyor belt image when it goes of screen
    }
  }

  void display() //function for the images to appear and the position of them.
  {
    image(conveyerimg, x1, 600, 1280, 125);  // Display the first conveyor belt image
    image(conveyerimg, x2, 600, 1280, 125);  // Display the second conveyor belt image
  }

  void update() //function to keep running throught
  {
    display();  // update and display the conveyor belt
    move();  // move the conveyor belt
  }
}
