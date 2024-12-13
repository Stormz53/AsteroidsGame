//your variable declarations here
Spaceship bob = new Spaceship();
Star [] sue = new Star[350];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Bullet> pew = new ArrayList <Bullet>();
public void setup()
{
  //your code here
  background(0);
  size(1000,1000);
  for(int i = 0; i < sue.length; i++)
  {
  sue[i] = new Star();
  }
  for(int i = 0;i < 16;i++){
    Asteroid yo = new Asteroid();
    rock.add(yo);
  }
}
public void draw()
{
  background(0);
  for(int i = 0; i < sue.length; i++)
  {
    sue[i].show();
  }
  for (int i =0; i< rock.size();i++){
    rock.get(i).move();
    rock.get(i).show();
    float d = dist(bob.getCenterX(),bob.getCenterY(),
    rock.get(i).getCenterX(),rock.get(i).getCenterY());
    if (d<40)
      rock.remove(i);
  }
  bob.move();
  bob.show();
  fill(255);
  textSize(20);
  text(("Direction:" + (int)bob.getPointDirection()),10,20);
  text(("X:" + bob.getCenterX()),10,40);
  text(("Y:" + bob.getCenterY()),10,60);
  text(("Xspeed:" + (int)bob.getXspeed()),10,80);
  text(("Yspeed:" + (int)bob.getYspeed()),10,100);
  
  for (int i = pew.size()-1; i>=0;i--){
    pew.get(i).show();
    pew.get(i).move();
    pew.get(i).accelerate(2);
    if (((pew.get(i).myCenterX)==1000 || (pew.get(i).myCenterY) == 1000)||((pew.get(i).myCenterX)==0 || (pew.get(i).myCenterY) == 0)){
      pew.remove(i);
      break;
    }
    for(int j = rock.size()-1;j>=0;j--){
      if(dist((float)(pew.get(i).myCenterX),(float)(pew.get(i).myCenterY),
      (float)(rock.get(j).myCenterX),(float)(rock.get(j).myCenterY)) <=30){
        pew.remove(i);
        rock.remove(j);
        break;
      }
    }
  }
}

public void keyPressed(){
  if(key == ' '){
    pew.add(new Bullet(bob));
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
  bob.accelerate(0.5);
 }
 //de-accelerate
 if(key == 's'){
  bob.accelerate(-0.5);
 }
 //hyperspacec
  if(key =='h'){
   bob.setXspeed(0);
   bob.setYspeed(0);
   bob.setCenterX((int)(Math.random()*1000));
   bob.setCenterY((int)(Math.random()*1000));
   bob.setPointDirection((int)(Math.random()*360));
 }
}
