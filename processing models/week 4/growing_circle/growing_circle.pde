int diameter = 10;

// expanding circle 
void setup() // start of program
{
  size(300,300);
}

void draw() //60 times a second
{
 ellipse (width/2, height/2,diameter , diameter);
 diameter = diameter +5;
 if(diameter>200)
    {
     int diameter = 10;
    }
}
