Motorbike motorbike1,  motorbike2;//declare varaible

void setup() 
{ 
  size(500,100); 
  //create new motorbike object
  motorbike1 = new Motorbike();
  motorbike2 = new Motorbike();
} 

void draw() 
{ 
  background(125);
  finishline();
  move();
  drawnbikes();
 
  
}


//if (motorbike1.finished()==true) 
//{
//  moterbike1.render();
//} else {
//  motorbike1.update
//}

//if (motorbike2.finished()==true) 
//{
//  moterbike2.render();
//} else {
//  motorbike2.update
//}
