public class StartScreen 
{
  boolean startButtonPressed = false;
  boolean howToPlayButtonPressed = false;

  void draw() 
  {
    // Draw Start button
    fill(112, 232, 147);
    rect(width / 2 - 50, height / 2 - 20, 100, 40);
    fill(0);
    textSize(22);
    text("Start", width / 2 - 25, height / 2 + 5);

    // Draw How to Play button
    fill(255, 142, 244);
    rect(width / 2 - 75, height / 2 + 50, 150, 40);
    fill(0);
    textSize(20);
    text("How to Play", width / 2 - 60, height / 2 + 75);
  }

  void mousePressed() 
  {
    if (mouseX > width / 2 - 50 && mouseX < width / 2 + 50 && mouseY > height / 2 - 20 && mouseY < height / 2 + 20)
    {
      startButtonPressed = true;
      level = 1;
    }
    else if (mouseX > width / 2 - 75 && mouseX < width / 2 + 75 && mouseY > height / 2 + 50 && mouseY < height / 2 + 90) 
    {
      howToPlayButtonPressed = true;
    }
  }
}
