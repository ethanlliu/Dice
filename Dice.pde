 int dotnum;
 void setup()
  {
    size(500,525);  
    noLoop();
  }
  void draw()
  {
  background(300,300,300);
  for(int y = 25; y<500; y=y+50)
  {
  for(int x = 25; x<500 ; x=x+50)
  {
    Die bob = new Die(x,y);
    bob.show();
  }
  
  }
  text(dotnum,225,525);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int num, myX, myY;
      Die(int x, int y) 
      {
          roll();
          myX = x;
          myY = y;
      }
      void roll()
      {
          num = (int)(Math.random()*6);
          dotnum = num + dotnum;
       
      }
      void show()
      {
        
        fill(300,300,300);
        rect(myX-25,myY-25,50,50);
        fill(0,0,0);
        if (num == 1)
        {  
          ellipse(myX,myY,10,10);
        }
      else if (num == 2)
        {  
          ellipse(myX+12.5,myY+12.5,10,10); 
          ellipse(myX-12.5,myY-12.5,10,10);
        }
        else if (num == 3)
        {  
          ellipse(myX+12.5,myY+12.5,10,10);
          ellipse(myX,myY,10,10);
          ellipse(myX-12.5,myY-12.5,10,10);
        }
        else if (num == 4)
        {  
          ellipse(myX+12.5,myY+12.5,10,10);
          ellipse(myX+12.5,myY-12.5,10,10);          
          ellipse(myX-12.5,myY-12.5,10,10);
          ellipse(myX-12.5,myY+12.5,10,10);
        }
        else if (num == 5)
        {  
          ellipse(myX+12.5,myY+12.5,10,10);
          ellipse(myX+12.5,myY-12.5,10,10);          
          ellipse(myX-12.5,myY-12.5,10,10);
          ellipse(myX-12.5,myY+12.5,10,10);
          ellipse(myX,myY,10,10);
        }
        else
        {  
          ellipse(myX+12.5,myY,10,10);
          ellipse(myX-12.5,myY,10,10);
          ellipse(myX+12.5,myY+12.5,10,10);
          ellipse(myX+12.5,myY-12.5,10,10);          
          ellipse(myX-12.5,myY-12.5,10,10);
          ellipse(myX-12.5,myY+12.5,10,10);
        }
          
        
        
        
        
      }
  }
