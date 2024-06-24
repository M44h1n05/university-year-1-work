public class StartScreen //create public class for more uses .. encapsulation
{
  // boolean variables to deter button clicks set to false default
  boolean startButtonPressed = false;
  boolean howToPlayButtonPressed = false;

  // images for start and how-to-play buttons
  PImage startimg;
  PImage howtoimg;

  // constructor for StartScreen class
  StartScreen() 
  {
    startimg = loadImage("Start_button.png"); //loading image directory data folder saved in code folder so dont need to specify path
    howtoimg = loadImage("How_to_play_button.png");//loading image directory data folder saved in code folder so dont need to specify path
  }

  // method to draw the start screen with buttons
  void draw() 
  {
    image(startimg, width / 2 - 50, height / 2 - 20, 100, 40); 
    image(howtoimg, width / 2 - 75, height / 2 + 50, 150, 40);
  }

  // method to trigger mouse press events on the start screen
  void mousePressed() {
    // check if the mouse is over the start button
    if (mouseX > width / 2 - 50 && mouseX < width / 2 + 50 && mouseY > height / 2 - 20 && mouseY < height / 2 + 20) //if met condition then
    {
      startButtonPressed = true; //set the boolean to true
      //set stage to 1. this variable is created in main code tab and is public so dont need to create like int stage =1; 
      stage = 1;
    } else if (mouseX > width / 2 - 75 && mouseX < width / 2 + 75 && mouseY > height / 2 + 50 && mouseY < height / 2 + 90) //if mouse here then
    {
      howToPlayButtonPressed = true; //boolean for this is set true
    }
  }
}
