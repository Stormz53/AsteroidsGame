class Asteroid extends Floater
{
   private double rotSpeed; //randomly + or -
   public Asteroid(){
     corners = 8;
     xCorners = new int[]{0*10,2*10,3*10,2*10,0*10,-2*10,-3*10,-2*10};
     yCorners = new int[]{3*10,2*10,0*10,-2*10,-3*10,-2*10,0*10,2*10};
     myColor = color(192);
     rotSpeed = (int)(Math.random()*3)+1;
     myXspeed = (int)(Math.random()*4)-2;
     myYspeed = (int)(Math.random()*4)-2;
     myPointDirection = (int)(Math.random()*100);
     myCenterX = (int)(Math.random()*1000);
     myCenterY = (int)(Math.random()*1000);
   }
  public void move ()
  {
    super.move();
    myPointDirection+=rotSpeed; 
  }  
   public void setCenterX(int x) {myCenterX = x;}
   public int getCenterX(){return (int)myCenterX;}
   public void setCenterY(int y) {myCenterY = y;}
   public int getCenterY(){return (int)myCenterY;}
}
