public class howtopage //create public class for more uses .. encapsulation
{
  void draw() //void used as return type for the method
  {
    // draw background continuouly for clearing
    background(255); //rgb 255,255,255 == white

    // draw instructions text in the middle of the screen
    fill(0);// color rgb 0,0,0 black
    textSize(24); // size of the text
    textAlign(CENTER, CENTER); //allignement and postion text to center of canvas
    text("How to Play", width / 2, height / 2 - 50); //string message and postioning (x,y)

    // the how to play texts
    textSize(16); //size of all steps
    text("1. Drag parts to build robot.", width / 2, height / 2);
    text("2. Connect in correct order.", width / 2, height / 2 + 30);
    text("3. body , head, hat.", width / 2, height / 2 + 60);
    text("4. Broken parts are in the factory avoid them!", width / 2, height / 2 + 90);
    text("5. Game speeds up , can you keep up?", width / 2, height / 2 + 120);

    // draw a back button in the bottom corner .. can use image if want to make look better .. dependent on time
    fill(66, 134, 244); // color rbg values 
    rect(25, 600, 100, 50); // create a rectangle x,y,x,y
    fill(255); //255,255,255 rbg
    textSize(16); //size of text
    textAlign(CENTER, CENTER); // center the text inside the rectangle
    text("Back", 25 + 50, 600 + 25); // position the text in the center of the rectangle
  }

  // method use to trigger mouse clicks on the back button created just above this 
  void mousePressed() 
  {
    // see if the mouse is over the back button
    if (mouseX > 25 && mouseX < 125 && mouseY > 600 && mouseY < 650) // if it is over then run code
    {
      // back button click will re assign the varable of game state
      gameState = 0; // go back to the main menu
    }
  }
}
