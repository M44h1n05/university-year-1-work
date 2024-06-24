// class for items

public class items
{
  int maxPapers = 5; // define  maximum number of papers. can be reassigned 
  Paper[] papers = new Paper[maxPapers]; // used array to store paper objects

  public items() // using a constructor with instances - (new)
  {
    int spacing = 250; // made new varaible assigned value to use for space in loop
    for (int i = 0; i < maxPapers; i++) // 
    {
      papers[i] = new Paper(i * spacing + spacing/2, 500); // Initialize near the middle
    }
  }

  public void moving_papers() 
  {
    for (int i = 0; i < maxPapers; i++) {
      papers[i].move();
      papers[i].display();
    }
  }

  public void checkMouseOver() // constructor to check if mouse is over any paper
  {
    for (int i = 0; i < maxPapers; i++)
    {
      if (papers[i].isMouseOver() && !papers[i].isInBin())
      {
        papers[i].moveToBin();
        score++; // score varaible will increase by 1
      }
    }
  }

  // Getter method to retrieve the score
  public int getScore() 
  {
    return score;
  }
}

class Paper 
{
  private float x;
  private float y;
  private float size;
  private boolean moving = true;
  private boolean inBin = false; // Track whether the paper is in the bin

  public Paper(float startX, float startY) 
  {
    x = startX;
    y = startY;
    size = random(100, 135);
  }

  public void move() 
  {
    if (moving && !inBin) 
    {
      x += 5;
      if (x > width) 
      {
        x = 0;
      }
    }
  }

  public void display() 
  {
    if (!inBin) {
      image(newspaper, x, y, size, size);
    }
  }

  public boolean isInBin()
  {
    return inBin;
  }

  public boolean isMouseOver() 
  {
    return mouseX > x && mouseX < x + size && mouseY > y && mouseY < y + size;
  }

  public void moveToBin()
  {
    if (!inBin) 
    {
      x = bin.getX(); // Move to the bins x position
      y = bin.getY(); // Move to the bins y position
      moving = false; // Stop moving
      inBin = true; // Mark as in the bin
    }
  }
}
