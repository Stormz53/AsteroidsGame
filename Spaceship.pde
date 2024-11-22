class Spaceship extends Floater  
{   
    public Spaceship(){
     corners = 13;
     xCorners = new int[]{-6*5,-4*5,-2*5,-2*5, 1*5, 5*5, 7*5, 5*5, 1*5, -2*5, -2*5, -4*5, -6*5};
     yCorners = new int[]{3*5, 2*5, 2*5, 3*5, 2*5, 2*5, 0*5, -2*5, -2*5, -3*5, -2*5, -2*5, -3*5};
     myColor = color(255,255,255);
     myCenterX = 500;
     myCenterY = 500;
     myXspeed = 0;
     myYspeed = 0;
     myPointDirection = 0;
    }
    
    public void setXspeed(double x){myXspeed = x;}
    public double getXspeed(){return myXspeed;}
    public void setYspeed(double y){myYspeed = y;}
    public double getYspeed(){return myYspeed;}
    public void setPointDirection(int degrees){myPointDirection = degrees;}
    public double getPointDirection(){return myPointDirection;}
    public void setCenterX(int x) {myCenterX = x;}
    public int getCenterX(){return (int)myCenterX;}
    public void setCenterY(int y) {myCenterY = y;}
    public int getCenterY(){return (int)myCenterY;}
}
