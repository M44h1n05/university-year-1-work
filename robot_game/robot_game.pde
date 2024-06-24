//boolean operator which states game is not over
boolean gameOver = false;

//boolean operator which states game has not started
boolean gameStarted = false;

//boolean operator which has set animation as false so animation does not yet begin
boolean levelUpAnimation = false;

// Variables for score and game stage assigigned integer 0 
int score = 0;
int stage = 0;

// Instances for game via public classes
StartScreen startScreen;
Conveyor conveyor;
Product robot;
howtopage howToPlay;

// State variable to manage different game states
int gameState = 0; // 0: Main Menu, 1: How to Play // -2.leaderboard if possible due to time not done-

void setup() 
{
  size(1000, 800); // specified canvas size in pixels 

  // intilise instances of the public classes and position (_,_) if nessesary
  conveyor = new Conveyor();
  robot = new Product(0, 0);
  startScreen = new StartScreen();
  howToPlay = new howtopage();
}

void draw() // executed continuously through out  
{
  background(255); // setting background colour to white allows clear background - no trails 
  // use of if statement for checking if the game has started
  if (!gameStarted) 
  {
    // if statement used to check the current game state
    if (gameState == 0) 
    {
      startScreen.draw(); // draw the start screen from public class - main start page .encapsulation - class_startscreen
    } else if (gameState == 1) // checks if the varaible gamestate is declared to 1
    {
      howToPlay.draw(); // draws the how to play page from the public class - seconds page  . encapsulation - class_startscreen
    }
  } else // if not the if statements then 
  {
    todo(); // todo subrutine is used for starting the game, includes all gameplay code
  }
}

void mousePressed() //function for mouse pressed - trigger event handler
{
  // check if the game has not - started boolean operator
  if (!gameStarted) 
  {
    // see the current game state - integer declared
    if (gameState == 0) 
    {
      startScreen.mousePressed(); //using encapsulation from public class to run code - class_startscreen
      if (startScreen.startButtonPressed)  // Check if the button labbeled play is clicked by user
      {
        gameStarted = true; // set boolean therefor game will start
      } else if (startScreen.howToPlayButtonPressed) // if not if then else if next button
      {
        gameState = 1; // varibale set to value 1 which is how to play page, mentioned above, (LINE 21)
      }
    } else if (gameState == 1) // simply checks if variable is on 1
    {
      howToPlay.mousePressed(); // use encapelsulation from public class allows user to click on button - class_startscreen
    }
  } else
  {
    robot.mousePressed(); //another use of encapsualtion again public class
  }
}

void mouseReleased() 
{
  if (!gameStarted && gameState == 0) // see if game is not stated and varabible state is decalred to integer value 0
  {
    startScreen.mousePressed(); // encapsulation from class for relase - class_startscreen
  } else if (gameStarted) // if gamestatred is set to boolean true then
  {
    robot.mouseReleased(); //another use of encapsualtion again public class
  }
}

void text_display() //function created to display game information
{
  String message = "Can you make enough robots for the new store?"; //message for game will show when user is playing
  textSize(18); // text size on screen 
  text(message, 300, 30); // postion of string on the canvas game screen 
  fill(0, 0, 255); // color blue rbg format 
  text("Score: " + score, 900, 30); // display score message and varibale  at postion
  text("Stage: " + stage, 750, 30);// display the stage message and varibale  at postion

  // create a message animation to appear on game
  if (levelUpAnimation) //will run code in loop if the boolean operation is set to true . False set LINE 8
  {
    textSize(36); // size of the text
    fill(0, 0, 255); // color blue rbg formatted
    text("Level Up! Speed increased!", width / 2, height / 2); // text appear at postion - - middle of screen
  }
}

void todo() //function of all game code used to shorten main code avoid using up too much lines on main code tab -THIS TAB-
{ // encapsilation from multiple classes
  text_display(); // Display game related messages
  conveyor.update(); // conveyer movement updates
  robot.mouseUpdate(); // any robot updates triiger by the mouse 
  robot.display(); // show the robot on screen
  robot.moveLeft(); // make the robot move left
  robot.connect(); // attach parts up to build
  robot.speedUp(); // make robot go faster paced to increase difficultiy

  if (robot.levelUp() && !robot.levelUpDisplayed)// Check for level up only run if condition met
  {
    levelUpAnimation = true; // change boolean value
    robot.levelUpDisplayed = true; // chnage the boolean value
  }

  // Logic to end the level up animation after a certain duration
  if (levelUpAnimation || robot.gameOver) //if either of these then
  {
    if (frameCount % 60 == 0) // freame count used to display animatuon for only 1 second then hide animation again
    {
      levelUpAnimation = false; // boolean opeartion chnages back to false to hide animation
      robot.gameOver = false; //simular as line above
    }
  }
}
