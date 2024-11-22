class Star //note that this class does NOT extend Floater
{
  private int myX, myY, mySize, myColor;
  public Star() {
   myX = (int)(Math.random()*1000);
   myY = (int)(Math.random()*1000);
   myColor = color((int)(Math.random()*255)+50,
                   (int)(Math.random()*255)+50,
                   (int)(Math.random()*255)+50);
   mySize = (int)(Math.random()*7)+4;
  }
  public void show(){
   noStroke();
   fill(myColor);
   ellipse(myX, myY, mySize, mySize);
  }
}
