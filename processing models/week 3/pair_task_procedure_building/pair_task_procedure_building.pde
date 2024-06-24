int x = 20;
int y = 20;

void setup()
{
  asset();
  asset2();
}

void asset()
{
  ellipse(x+10,y,x,y);
  rect(x,y,x,y);
  rect(x+5,y+5,x-10,y-10);
}

void asset2()
{
  ellipse(55,45,10,10);
  rect(50,45,10,10);
  rect(52,48,5,5);
}
