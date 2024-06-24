void setup()
{
  size(400,400);
  pattern(50,50,60,3,3);
}

void pattern(int x,int y, int size, int row, int collumn)
{
  int left = x;
  for(int i=0;i<collumn;i++)
  {
    for(int j=0;j<row;j++)
    { 
      int half=size/2;
      ellipse(x,y, size,size);
      ellipse(x+half,y, half,half);
      ellipse(x-half,y, half,half);
      ellipse(x,y+half, half,half);
      ellipse(x,y-half, half,half);
      x=x+size;
    }
    x=left;
    y=y+size;
 }
}
