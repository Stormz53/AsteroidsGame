//your variable declarations here
Spaceship bob = new Spaceship();
Star [] sue = new Star[350];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
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
}

public void keyPressed(){
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
   bob.setCenterX((int)(Math.random()*500));
   bob.setCenterY((int)(Math.random()*500));
   bob.setPointDirection((int)(Math.random()*360));
 }
}
