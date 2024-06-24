final color RED = color(255,0,0);  //constant 
final color BLUE = color(0,0,255); 

class Motorbike 
{ 
 int x = 5;  //members 
 int y; 
 int speed=2; 
 int size=30; 
 color colour;

//methods, procedures an object of this type can perform 
 void render() 
 { 
   float wheelHeight = size/3; 
   fill(colour); 
   triangle(x,y,x+size,y,x+size/2,y-size/2);  //built-in triangle routine 
   drawWheel(x,y,wheelHeight); 
   drawWheel(x+size,y,wheelHeight); 
 } 
  
 void drawWheel(int x,int y,float size) 
 { 
    float inner = size*2/3; 
    fill(0); 
    ellipse(x,y,size,size); 
    fill(255); 
    ellipse(x,y,inner,inner); 
 } 
} //end of class description 

void move() 
{ 
    motorbike1.speed = (int)random(5.0);  //a random step [0..5] 
    motorbike1.x=motorbike1.x+motorbike1.speed;  
    motorbike2.speed = (int)random(5.0);  //a random step [0..5] 
    motorbike2.x=motorbike2.x+motorbike2.speed;  
} 

void drawnbikes()
{
  motorbike1.render();
  motorbike1.y=30;
  motorbike1.colour = RED;
  motorbike1.speed=3;
  motorbike2.render();
  motorbike2.y=70;
  motorbike2.colour = BLUE;
}

void finishline()
{
  fill(255);
  rect(480,0,490,20);
  rect(480,40,490,20);
  rect(480,80,490,20);
  
  fill(0);
  rect(480,20,490,20);
  rect(480,60,490,20);
}

//boolean finished(int "490")
//{
//  if (speed>0)
//    return X >= finishLine;
//  else
//    return X <= finishLine;
//}

//void f()
//{
//  if (motorbike1.finished(490)==false)
//    motorbike1.move;
//  if (motorbike2.finished(490)==false)
//    motorbike2.move;
//}
