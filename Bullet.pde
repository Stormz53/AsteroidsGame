class Bullet extends Floater{
  Bullet(Spaceship bob){
    myCenterX = bob.getCenterX();
    myCenterY = bob.getCenterY();
    myXspeed = bob.getXspeed();
    myYspeed = bob.getYspeed();
    myPointDirection = bob.getPointDirection();
  }
  public void show(){
    fill(255);
    stroke(255,0,0);
    ellipse((float)(myCenterX), (float)(myCenterY),10,10);
  }
}
