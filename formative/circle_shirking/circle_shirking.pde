float x = 50;
float y = 50;
float a = 100;
void draw()
{
  background(0);
  ellipse(x, y, a, a);   //ellipse parameters are : x, y, width, height 
  a = a - 1;
  if (a <10)
    a = 100;
}
