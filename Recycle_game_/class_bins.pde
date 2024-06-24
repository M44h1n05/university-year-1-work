// public == accessible from other classes / private -- not accessible from other classes

public class bins 
{
  private int x = 50, y = 50, size = 150;

  // Add getX and getY methods to get the x and y positions
  public int getX() {
    return x;
  }

  public int getY() {
    return y;
  }

  // Method to display the bin which can be used in main code 
  public void display() 
  {
    image(blueBin, x, y, size, size); // Display the blue bin image
  }
}
