int x = 10;
int y = 10;
int size = 10;

void setup()
{
  triangle(x,y,20);
  fill(0);
  circle(x,y,10);
  circle(x*3,y,10);
  fill(255);
  circle(x,y,5);
  circle(x*3,y,5);
}

void triangle(int x, int y, int size)
{
  float triHeight = size/2;
  line(x,y,x+size,y);
  line(x,y,x+triHeight,y-triHeight); 
  line(x+triHeight,y-triHeight,x+size,y); 
}

void wheel(int x, int y, int size)
{
   ellipse(x,y,size,size);
}
