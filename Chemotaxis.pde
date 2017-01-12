 Bacteria [] bac; 
 void setup()   
 {     
   size(500,500); 
   bac = new Bacteria[25]; 
   for(int i = 0; i < bac.length; i++)
   {
     bac[i] = new Bacteria(); 
   }  
 }   
 void draw()   
 {    
   background(0);
   for(int i = 0; i < bac.length; i++)
   {
      bac[i].show(); 
      bac[i].move(); 
   }
 }
 class Bacteria    
 {     
    int x, y, z, a, b, aX, aY;  
    
    Bacteria()
    {
      x = 250; 
      y = 250;
      z = (int)(Math.random()*255)+1; 
      a = (int)(Math.random()*255)+1; 
      b = (int)(Math.random()*255)+1; 
      
      
    }  
    void move()
    {
      
      if(mouseX > x)
      {
        aX = 0; 
      } 
      else 
      {
        aX = 5; 
      }
      if(mouseY > y)
      {
        aY = 0; 
      }
      else 
      {
        aY = 5; 
      } 
      
        x = x + (int)(Math.random()*7) - aX;  
        y = y + (int)(Math.random()*7) - aY; 
        
        
      
    }
    void show()
    {
      
      ellipse(x, y, 15, 15); 
      fill(z, a, b); 
      
    }
 }    
