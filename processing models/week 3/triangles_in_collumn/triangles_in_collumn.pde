int x= 10; // global variable 

void setup()
{
     for(int y=20; y<60; y=y+10)
     {
        triangle(x, y, 20);
     }
}

void triangle(int x, int y, int size)
{
  float triHeight = size/2; // local variable
  line(x,y, x+size,y);
  line(x,y, x+triHeight,y-triHeight); 
  line(x+triHeight, y-triHeight,x+size,y); 
}
