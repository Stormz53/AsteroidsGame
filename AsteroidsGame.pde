Spaceship bob = new Spaceship();
Star [] sirius = new Star[500];
ArrayList<Asteroids> asts = new ArrayList<Asteroids>();
ArrayList<Bullet> bobby = new ArrayList<Bullet>();
public void setup() {
  //your code here
  background(0);
  size(1000,1000);
  for(int i = 0; i < sirius.length; i++){
  sirius[i] = new Star();
  }
  for(int i = 20; i > 0; i--){
  asts.add(new Asteroids());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < sirius.length; i++){
    sirius[i].show();
  }
  for (int i = asts.size()-1; i >= 0; i--) {
    Asteroids a = asts.get(i);
    a.move();
    a.show();
   float d = dist((float) bob.myCenterX, (float) bob.myCenterY, (float) a.myCenterX, (float) a.myCenterY);

  if (d < 34) { 
    asts.remove(i);
    bob.setXspeed(bob.getXspeed() * -0.5);
    bob.setYspeed(bob.getYspeed() * -0.5);
}
  }
  fill(255);
  textSize(20);
  text(("Direction:" + (int)bob.getPointDirection()),10,20);
  text(("X:" + bob.getCenterX()),10,40);
  text(("Y:" + bob.getCenterY()),10,60);
  text(("Xspeed:" + (int)bob.getXspeed()),10,80);
  text(("Yspeed:" + (int)bob.getYspeed()),10,100);
  
  for (int i = bobby.size()-1; i>=0;i--){
    bobby.get(i).show();
    bobby.get(i).move();
    bobby.get(i).accelerate(2);
    if (((bobby.get(i).myCenterX)==1000 || (bobby.get(i).myCenterY) == 1000)||((bobby.get(i).myCenterX)==0 || (bobby.get(i).myCenterY) == 0)){
      bobby.remove(i);
      break;
    }
    for(int j = asts.size()-1;j>=0;j--){
      if(dist((float)(bobby.get(i).myCenterX),(float)(bobby.get(i).myCenterY),
      (float)(asts.get(j).myCenterX),(float)(asts.get(j).myCenterY)) <=30){
        bobby.remove(i);
        asts.remove(j);
        break;
      }
    }
  }
    bob.move();
  bob.show();
}


public void keyPressed(){
  if(key == '`'){
    bobby.add(new Bullet(bob));
  }

  //turn right
 if(key == 'd'){
   bob.turn(15);
 }
 //turn left
 if(key == 'a'){
  bob.turn(-15); 
 }
 //accelerate
 if(key =='w'){
  bob.accelerate(0.55); 
 }
 //de-accelerate
 if(key == 's'){
  bob.accelerate(-0.55); 
 }
 //hyperspacec
  if(key =='q'){
   bob.setXspeed(0);
   bob.setYspeed(0);
   bob.setCenterX((int)(Math.random()*1000));
   bob.setCenterY((int)(Math.random()*1000));
   bob.setPointDirection((int)(Math.random()*360));
 }
}
