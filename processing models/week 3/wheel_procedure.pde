int x=50; // global variabe 
int y=50; // global variabe 

void setup() // program starts here
{
  wheel();
  x=x+20;
  CatsEye();
}//setup

//we can add our procedures here
void wheel()
{
  ellipse(x,y,10,10);//wheel
  line(x-5,y, x+5,y);
  line(x,y-5, x,y+5);
}

void CatsEye()
{
  ellipse(x,y,10,10);//wheel
  line(x,y-5, x,y+5);
}
