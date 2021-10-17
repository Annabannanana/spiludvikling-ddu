
Bow bow;
Target target;
Particle particle;

void setup(){
  frameRate(30);
  size(1500, 800);
  imageMode(CENTER);
  bow = new Bow();
  target = new Target(random(1000, 1450), random(50, 750));
  bow.currentTarget = target;
  target.update();
  particle = new Particle(new PVector(10, 10));
}

void draw(){
  clear();
  background(0, 175, 200);  
  bow.display();
  target.display();
  bow.collision();
  
}

void mousePressed(){
  bow.shoot();
  //target.update();
}
