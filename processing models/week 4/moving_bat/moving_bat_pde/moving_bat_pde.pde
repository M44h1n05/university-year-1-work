int y = 10;

void setup()
{
  size (500,250);
  rect (10,y,10,30);
  keyPressed();
}

//using arrow cluster
void keyPressed()
{
  if(key == CODED)
  {
    if (keyCode == UP)
    {
      y = y + 5;
    }
    if(keyCode == DOWN)
    {
      y = y - 5;
    }
   
  }  //if key is CODED
}
