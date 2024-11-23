class Star //note that this class does NOT extend Floater
{
  private int myX, myY, mySize, myColor;
  public Star() {
   myX = (int)(Math.random()*1000);
   myY = (int)(Math.random()*1000);
   myColor = color((int)(Math.random()*255)+100,(int)(Math.random()*255)+100,(int)(Math.random()*255)+100);
   mySize = (int)(Math.random()*5)+3;
  }
  public void show(){
   noStroke();
   fill(myColor);
   ellipse(myX, myY, mySize, mySize);
  }
}
