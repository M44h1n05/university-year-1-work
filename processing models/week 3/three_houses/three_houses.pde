void setup()
{
  size (200,200);
  //draw 3 of them in different places
  diagram(20,30,40);// big left
  
  diagram(80,90,16);//small middle
  
  diagram(150,150,26);
}

//design : draw shape
//draw from topleft of big square

void diagram(int x,int y, int size)
{
  ellipse(x+size/2, y,size, size);//circle : x + size/2, y
  rect(x,y , size, size);//rect : 1/2*size further left,size 
  rect(x+size*1/5, y+size*1/5, size*3/5 , size*3/5);//small rect: size + 1/5th size 
}
