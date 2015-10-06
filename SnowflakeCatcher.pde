Snowflake[] yuu;
void setup()
{
  size(300,300);
  background(0, 0, 0);
  yuu = new Snowflake[20];
  for(int i=0; i< yuu.length; i++)
  { 

    yuu[i] = new Snowflake();
  }
}
void draw()
{
  
  for(int i=0; i< yuu.length; i++)
  {
  yuu[i].erase();
  yuu[i].lookDown();
  yuu[i].move();
 
  yuu[i].wrap();
  yuu[i].show();
  }
}
void mouseDragged()
{
  fill(4,94,212);
  noStroke();
  rect(mouseX,mouseY,20,20);
}

class Snowflake
{

PImage photo;

int x, y;
boolean isMoving;

  Snowflake()
  { 
    photo =loadImage("snowflakes.png");
    x=(int)(Math.random()*300);
    y=(int)(Math.random()*300);
    isMoving=true;
  }
  void show()
  { 
    strokeWeight(1);
    stroke(0, 0, 0);
    //fill(225,225,225);
    image(photo,x,y,5,5);
    //ellipse(x,y,5,5);

  }
  void lookDown()
  {
    if((y <= 290 && y>=10) && (get(x, y+7)!= color(0,0,0))) 
    {
      isMoving=false;
    }
    
    
    else
    {
      isMoving=true;
    }
  }

  void erase()
  {
    fill(0,0,0);
    ellipse(x,y,10,10);
  }
  void move()
  {
   if(isMoving == true)
   {
     y++;
   }
  }
  void wrap()
  {
    if(y >= 300)
    {
      y=0;
     
    }
  }
}


