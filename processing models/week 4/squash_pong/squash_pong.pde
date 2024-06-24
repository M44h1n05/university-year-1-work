//ball variables #global
int x = 250;  
int speedX = 3 ; 
int y =250 ;
int speedY = 3;

//bat variable #global
int batY = 10;

void setup()  //runs once at start
{
  size(500,250);      //screen size
  stroke(255,0,0);    //pen red
  fill(255,0,255);     //yellow fill
  keyPressed();     //runs sub program
  draw();        //runs sub program
}

void draw()  //runs repeatedly every 60th of a second
{
  background(34, 84, 102);            // makes background color to hide old ball 
  ellipse(x,y,10,10);   //draw ball at current position : x, y fixed at 125!
  x=x+speedX;     //move ball right
  y=y+speedY;     // ball moves up
  rectMode(CENTER);    // draw from center
  rect (30,batY,10,40);    //creates left bat  
  float distanceBatBall = dist(x,y, 20, batY);    //distance from bat to ball
  print(distanceBatBall + " ");    //prints out distance
  rect (480,y,10,40);    //creates second paddle
 
  if ( x < 10) // if ball goes near left wall
  {
    x = 100; // ball reset in middle 
    speedX = - speedX; // move ball away to right
  }
  if ( x >480) // if ball is near the right wall
  {
    x=400; // ball resets to middle
    speedX = - speedX; 
  }
  
  if( y<0 || y> height)        // ask if ball is on top or bottom of screen 
  {
    speedY = - speedY;    // move ball up and down 
  }
  if (distanceBatBall <= 30.0)
  {
    speedX = - speedX; 
    speedY = - speedY;
  }
}

void keyPressed()
{
  if (key==CODED)
  {
    if (keyCode == UP && batY>=15)
    {
      batY = batY - 10;
    }
    if(keyCode == DOWN && batY<240)
    {
      batY = batY + 10;
    }
  }
}
