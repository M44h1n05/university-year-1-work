int x=50; // global variabe 
int y=50; // global variabe 

void setup() // program starts here
{
  row5wheels();
}//setup

//we can add our procedures here
void wheel()
{
  ellipse(x,y,10,10);//wheel
  line(x-5,y, x+5,y);
  line(x,y-5, x,y+5);
}

void row5wheels()
{
  for (int i =0;i<5;i=i+1)
  {
    wheel();
    x=x+10;
  }
}
