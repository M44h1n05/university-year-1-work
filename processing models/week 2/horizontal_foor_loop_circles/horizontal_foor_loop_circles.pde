int x=10;  //declare int variable called x put 10 in there
int y=90;  //declare int variable called y put 20 in there

size(100,100); //set size of canvas screen

for(int i=0; i<10; i=i+1)
{
  x=x+10;
  y=y-10;
  print(" i:"+i+",x:"+x); //display variable value in console window
  ellipse(x,y, 5,5);
}
