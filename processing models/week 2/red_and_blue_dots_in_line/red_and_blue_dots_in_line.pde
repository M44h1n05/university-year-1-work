

//draw odd/even circles across screen
int x=10;
int counter = 0;
size(300,100);
while (x < width)  //repeat if x is on the canvas
{
  counter = counter+1;
  if (counter % 2 == 0)  //select fill colour does counter contain an EVEN value
  { //yes do this
    fill(255,0,0); //red
  }
  else
  {       //otherwise do this instead
    fill(0,0,255); //blue
  }
  ellipse(x,50, 10,10); //draw coloured circle
  x=x + 20; //move right a bit
}
