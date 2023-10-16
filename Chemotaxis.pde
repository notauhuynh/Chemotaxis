//declare bacteria variables here   
Bacteria [] boop;
void setup()   
{     
  size(600, 600);
  background(0);
  boop = new Bacteria[1000];
  for (int i = 0; i < boop.length; i++) {
    boop[i] = new Bacteria();
  }
}   
void draw()   
{  
  for (int i = 0; i < boop.length; i++) { 
    boop[i].walk();
    boop[i].show();
  }
}  
class Bacteria {  
  int x, y, myColors;
  
  Bacteria() {
    x = y = 300;
    myColors = color((int)(Math.random()*50) + 200,(int)(Math.random()*50) + 200, (int)(Math.random()*50) + 200 );
  }
  void walk() {
    x = x + (int)(Math.random() * 9) -  4;  
    y = y + (int)(Math.random() * 9) -  4;
  }

  void show() {
    
    
    fill(myColors);
    ellipse(x, y, 5, 5);

  }
}    
