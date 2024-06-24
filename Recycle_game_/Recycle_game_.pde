boolean gameStarted = false; //game has not begun therefore false

// Define background image and object images
PImage background;
PImage blueBin;
PImage newspaper;


// Create an instance for class bins and class item
bins bin = new bins();
items paper = new items();

// txt msg to show on screen
String message = "click the correct items";

//variables for score and level will be used on screen
int level = 0;
int score = 0;

StartScreen startScreen;

void setup() 
{
  size(1000, 800); // size for canvas
  images(); // Load images from method images at bottom
  background = loadImage("yard_bg.jpg"); //applying load function to variable
  background.resize(width, height); // fills canvas size with background
  startScreen = new StartScreen();//making a new instance of class to variable
}

void draw() 
{
  image(background, 0, 0);
  
  if (gameStarted) {
    bin.display();
    paper.moving_papers(); // Call the new method for moving multiple papers

    // display message
    fill(0);
    textSize(28);
    text(message, 20, 30);

    // display score and level
    text("Score: " + score, 600, 30);
    text("Level: " + level, 400,30);

    // if statement to check if the newspaper is clicked
    if (mousePressed) {
      paper.checkMouseOver();
    }
  } else {
    // Draw start screen
    startScreen.draw();
  }
}


void mousePressed() {
  startScreen.mousePressed();
  if (startScreen.startButtonPressed) {
    gameStarted = true;
  } else if (startScreen.howToPlayButtonPressed) {
  }
}

// Load images into variables
void images() {
  blueBin = loadImage ("Blue_Bin.png");
  newspaper = loadImage ("npaper.png");
}
