class Spaceship extends Floater{   
   Spaceship(){
     corners = 19;
     xCorners = new int []{20,00,00,-10,-10,-40,-40,-50,-50,-40,-40,-50,-50,-40,-40,-10,-10, 00, 00};
     yCorners = new int []{00,20,10, 10, 20, 30, 20, 20, 10, 10,-10,-10,-20,-20,-30,-20,-10,-10,-20};
     myColor = color(255);
     myCenterX = 250;
     myCenterY = 250;
     myXspeed = 1;
     myYspeed = 1;
     myPointDirection = 0;
   }
   public void setXspeed(double x){
   myXspeed = x;
 }
    public double getXspeed(){
    return myXspeed;
  }
    public void setYspeed(double y){
    myYspeed = y;
  }
    public double getYspeed(){
    return myYspeed;
  }
    public void setPointDirection(int degrees){
    myPointDirection = degrees;
  }
    public double getPointDirection(){
    return myPointDirection;
  }
    public void setCenterX(int x) {
    myCenterX = x;
  }
    public int getCenterX(){
    return (int)myCenterX;
  }
    public void setCenterY(int y){
    myCenterY = y;
  }
    public int getCenterY(){
    return (int)myCenterY;
  }
}
