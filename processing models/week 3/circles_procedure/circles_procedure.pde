//circle procedure : draw circle middle screen, different sizes

//global vairables declaration go here


void setup()//program starts here
{
  circle(40); //passing 40 into circle (diamater variable)
  circle(20);
}

// my procedures go here 
void circle(int diameter)
{
 ellipse (50,50, diameter, diameter); //  use local variable for width/height
}
