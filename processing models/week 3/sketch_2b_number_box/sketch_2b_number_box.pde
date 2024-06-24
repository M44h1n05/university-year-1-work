
void setup()
{
  size(200,200);
  numberBox(7);  //pass value to display in number box
  box(x,y,10);
}
void numberBox(int value)
{
  strokeWeight(2);
  rect(100,50,20,20);
  ellipse(110,60,18,18);
  fill(0);
  text(value,110,65);
}
