public class Product // public class for handling the product (robot)/. encapsulation
{
  // images for different parts of the robot 
  PImage fullRobotImg;
  PImage robotLegs;
  PImage robotBody;
  PImage robotHead;
  PImage robotHat;
  //integes and floats for variables
  int x, y;
  int legsX, legsY;
  float headX, headY;
  float headX2, headY2;
  float bodyX, bodyY;
  float hatX, hatY;
  float hatX2, hatY2;
  float legsSpeed = 2.0;
  //booleans set to false 
  boolean headDragging = false;
  boolean bodyDragging = false;
  boolean hatDragging = false;
  boolean connected = false;
  boolean gameOver = false;

  // Array for storing images
  PImage[] images = new PImage[7];

  // Constructor
  Product(int x, int y) {
    // Initialize positions x and y with pixels 
    this.x = x;
    this.y = y;
    this.legsY = 585;
    this.legsX = width;
    this.headX = 700; 
    this.headY = 300;
    this.bodyX = 900;
    this.bodyY = 300;
    this.hatX = 500;
    this.hatY = 300;

    // Load images with a for loop so it loads till the counter set i 
    for (int i = 0; i < images.length; i++) {
      images[i] = loadImage("img" + (i + 1) + ".png");
    }
  }

  void reset()   // Reset method
  {
    // reset positions and use of random 
    legsX = width;
    legsY = 585;
    headX = random(50, 300);
    headY = random(350, 450);
    bodyX = random(350, 700);
    bodyY = random(250, 350);
    hatX = random(750, 950);
    hatY = random(150, 200);
    hatX2 = random(700, 1000);
    hatY2 = random(150, 400);
    headX2 = random(70, 295);
    headY2 = random(370, 475);
    headDragging = false;
    bodyDragging = false;
    hatDragging = false;
    connected = false;
    legsSpeed += 1;
  }

  // Variables to store outline using boolean
  boolean headOutline = false;
  boolean bodyOutline = false;
  boolean hatOutline = false;

  // Display method
  void display() 
  {
    // Draw outline when head is clicked and dragged
    if (headOutline) // run if condition met
    {
      stroke(0, 255, 0); //give green stroke
      strokeWeight(5); //strenght of the stoke
      noFill(); // fill? NO
      rect(headX, headY, 100, 50); // draw rectangle and position
    }

    // Draw outline when body is clicked and dragged
    if (bodyOutline) //if the condition met
    {
      stroke(0, 255, 0); //give green stroke
      strokeWeight(5); //strenght of the stoke
      noFill(); // fill? NO
      rect(bodyX, bodyY, 100, 50); // rectangle at the postions
    }

    // Draw outline when hat is clicked and dragged
    if (hatOutline) //if condition is met
    {
      stroke(0, 255, 0); //give green stroke
      strokeWeight(5); //strenght of the stoke
      noFill(); // fill? NO
      rect(hatX, hatY, 100, 50); // draw rect at pixels
    }

    // Draw the parts using the arrays thru images. and giving postions 
    image(images[4], x, y, 100, 100);
    image(images[0], legsX, legsY, 100, 50);
    image(images[2], headX, headY, 100, 50);
    image(images[1], bodyX, bodyY, 100, 50);
    image(images[3], hatX, hatY, 100, 50);

    // Display hat2 after level 3 . broken part will end game
    if (stage >= 3) // if stage  is greater or equal to 3 then
    {
      image(images[5], hatX2, hatY2, 100, 50); //draw image at postion
    }

    // Display head2 after level 5 ..broken part will end game 
    if (stage >= 5) // if stage  is greater or equal to 3 then
    {
      image(images[6], hatX2, hatY2, 100, 50);// draw image at positon
    }

    // reset sthe stroke settings
    noStroke();
  }

  // variable for conveyors set true 
  boolean conveyorsMoving = true;

  // Move left method
  void moveLeft()
  {
    // Move legs to the left
    if (legsX > 0 && conveyorsMoving) //if legs x is bigger than 0 and conveyer is mvoing then
    {
      legsX -= legsSpeed; // make move left
    } 

    // Check if legs have reached the left edge of canvas so 0 on x axis 
    if (legsX <= 0) // if legs is at position 0 then 
    {
      background(0); // rbg 0,0,0 black
      textSize(50); //text size
      String gameover = "Game over"; //the message 
      conveyorsMoving = false; //boolean  false now
      fill(255, 0, 0); // rgb will be red text
      text(gameover, width / 2, height / 2); // display the text middle of canvase
    }
  }

  // Connect method
  void connect() 
  {
    // Connect body, head, and hat all simular just differ the varaibles 
    if (bodyX < legsX + 100 && bodyX + 100 > legsX && bodyY < legsY + 50 && bodyY + 50 > legsY) 
    {
      bodyX = legsX - 2.5;
      bodyY = legsY - 49;
    }

    if (headX < bodyX + 100 && headX + 100 > bodyX && headY < bodyY + 50 && headY + 50 > bodyY) 
    {
      headX = bodyX;
      headY = bodyY - 49;
    }

    if (hatX < headX + 100 && hatX + 100 > headX && hatY < headY + 50 && hatY + 50 > headY) 
    {
      hatX = headX;
      hatY = headY - 49;
    }

    checkConnected();
  }

  void checkConnected() // method to check connect
  {
    // Check if all parts are connected
    if (bodyX == legsX - 2.5 && bodyY == legsY - 49 && headX == bodyX && headY == bodyY - 49 && hatX == headX && hatY == headY - 49)
    {
      // Update score when connected
      if (!connected) 
      {
        score += 10; //add ten to varable score
        connected = true; //set true boolean
      }
    } else 
    {
      connected = false; // set false boolean operation
    }
  }

  void scoreAdder()   // score adder method
  {
    // Add score and reset positions when legs reach the left edge
    if (legsX <= 0) 
    {
      reset(); //new postions due random
      score += 10;//add score 10
      stage += 1;// add 1 to stage
      moveLeft(); //make legs move left
    }
  }

  void speedUp()   // Speed up method
  {
    // Speed up legs based on score
    int[] validScores = {10, 30, 50, 70, 90, 110, 130, 150, 170}; //array of integers

    for (int validScore : validScores) 
    {
      if (score == validScore && legsX > 0) 
      {
        legsX -= 10; //speed up moving left
        scoreAdder(); // run code form subroutine
      }
    }
  }

  //  method to check if the mouse is over the robot head..simular
  boolean overHead() {
    return mouseX > headX && mouseX < headX + 100 && mouseY > headY && mouseY < headY + 50;
  }

  //  method to check if the mouse is over the robot body..simular
  boolean overBody() {
    return mouseX > bodyX && mouseX < bodyX + 100 && mouseY > bodyY && mouseY < bodyY + 50;
  }

  //  method to check if the mouse is over the robot hat..simualr
  boolean overHat() {
    return mouseX > hatX && mouseX < hatX + 100 && mouseY > hatY && mouseY < hatY + 50;
  }

  //  method to check if the mouse is over the broken robot hat..simular to below
  boolean overBrokenHat() {
    return mouseX > hatX2 && mouseX < hatX2 + 100 && mouseY > hatY2 && mouseY < hatY2 + 50;
  }

  //  method to check if the mouse is over the broken robot head .. simualr to above
  boolean overBrokenHead() {
    return mouseX > headX2 && mouseX < headX2 + 100 && mouseY > headY2 && mouseY < headY2 + 50;
  }

  //  method to display "Game Over" message
  void gameOver(String message)
  {
    // Display game over message and stop the draw loop
    background(0); //rbg 0,0,0
    textSize(20);// text size
    fill(255, 0, 0); //rgb red text
    text(message, width / 2, height / 2); // middle of canvase display message 
    gameOver = true; //boolean now true
    conveyorsMoving = false; // boolean now false
    noLoop(); //stops the draw in main code
  }

  void mousePressed()   //  handle mouse press events
  {
    if (!gameOver)  // if condtion met then
    {
      if (overHead())  // Check if the mouse is over the head and not on a broken part
      {
        if (overBrokenHead())    // Check if the mouse is over the head and not on a broken part
        {
          gameOver("Game Over! You clicked on a broken part."); // Clicked on a broken part text
        } else 
        {
          headDragging = true; //set true
          headOutline = true; //set true
        }
      }

      // Check if the mouse is over the body
      if (overBody()) 
      {
        bodyDragging = true; // same up
        bodyOutline = true; //same up
      }

      // check if the mouse is over the hat and not on a broken part
      if (overHat())
      {
        if (overBrokenHat()) 
        {
          // Clicked on a broken part
          gameOver("Game Over! You clicked on a broken part."); // Clicked on a broken part text
        } else {
          hatDragging = true;  //same up
          hatOutline = true; //same up
        }
      }
    }
  }

  void mouseReleased()   //  mouse release events
  {
    headDragging = false; //set false
    bodyDragging = false; //set false
    hatDragging = false; //set false

    // Reset outlines when the mouse is released
    headOutline = false; //set false
    bodyOutline = false; //set false
    hatOutline = false; //set false
  }

  void mouseUpdate()  //Method to update the position of dragged parts based on mouse movement all same
  {
    if (headDragging) 
    {
      headX = mouseX - 50;
      headY = mouseY - 25;
    }
    if (bodyDragging)
    {
      bodyX = mouseX - 50;
      bodyY = mouseY - 25;
    }
    if (hatDragging)
    {
      hatX = mouseX - 50;
      hatY = mouseY - 25;
    }
  }

  boolean isScoreValid(int score, int[] validScores)   // method to check if the score is valid
  {
    for (int validScore : validScores) 
    {
      if (score == validScore) // is the score equal to valid score if it is then 
      {
        return true; //return value true
      }
    }
    return false; //returen value false
  }

  boolean levelUpDisplayed = false;  // Variable to track whether the level up message has been displayed

  boolean levelUp() //  check if the score triggers a level up
  {
    int[] validScores = {10, 30, 50, 70, 90, 110, 130, 150}; // array from before 

    for (int validScore : validScores)
    {
      if (score == validScore && legsX > 0) //if condition is met then score is valid and legs position greater than 0
      {
        legsX -= 8; // speed up
        scoreAdder(); // run subroutine

        levelUpDisplayed = false;  // reset the level up displaye when level goes up

        return true; // Return true when level up occurs
      }
    }
    return false; // Return false otherwise
  }
}
