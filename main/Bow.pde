class Bow extends Target{
  
  ArrayList<Arrow> allArrows = new ArrayList<Arrow>();
  Arrow nextArrow;
  PImage bow;
  
  Bow(){
    newShot();
    bow = loadImage("Bow.png");
    bow.resize(150, 200);
  }
  
  void newShot(){
    Arrow newShot = new Arrow();
    newShot.loca.x = 100;
    newShot.loca.y = 400;
    newShot.w = 15; 
    newShot.h = 15;
    
    allArrows.add(newShot);
    nextArrow = allArrows.get(allArrows.size() - 1);
  }
  
  void shoot(){
    float afstand = dist(nextArrow.loca.x, nextArrow.loca.y, mouseX, mouseY);
    //new ints for the dist equation
    //println(afstand);
    

    
    if(afstand > 300){
      afstand = 300;
    }
    nextArrow.velo.x = (dist(nextArrow.loca.x, nextArrow.loca.y, mouseX, nextArrow.loca.y) / 50) * (afstand / 50);
    if(mouseY > 350){
      nextArrow.velo.y = (dist(nextArrow.loca.x, nextArrow.loca.y, nextArrow.loca.x, mouseY) / 50) * (afstand / 50);
    }else{
      nextArrow.velo.y = (dist(nextArrow.loca.x, nextArrow.loca.y, nextArrow.loca.x, mouseY) / 50) * (-afstand / 50);
    }
    
    
    //println(nextArrow.velo.x + " and " + nextArrow.velo.y);
    //then in the if and else statement, add the new ints to the velocities
    nextArrow.fired = true;
    newShot();
  }
  
  void collision(){
    for(Arrow a : allArrows){
      //println(allArrows.size());
      /*
      println("a.loca.x = " + a.loca.x);
      println("a.loca.y = " + a.loca.y);
      */
      println("targetX = " + targetX);
      println("targetY = " + targetY);
      if(a.loca.x < targetX + 100 && a.loca.x > targetX - 100 && a.loca.y < targetY + 100 && a.loca.y > targetY - 100){
        target.update();
      }
    }
  }
  
  void display(){
    for(Arrow a : allArrows){
      a.display();
      a.update();

    }
    image(bow, 70, 400);
  }
  
}
