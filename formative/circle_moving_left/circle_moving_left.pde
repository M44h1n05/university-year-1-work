float x = 100;
float y = 50;
float a = 100;
void draw()
{
  background(0);
  ellipse(x, y, a, a);   //ellipse parameters are : x, y, width, height 
  x = x-1;
  if (x <10)
  {  x = 100; }
}
