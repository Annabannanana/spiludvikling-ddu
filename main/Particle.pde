class Particle extends Component{
  
  float lifespan;
  
  Particle(PVector n){
    accel = new PVector(0,0.1);
    velo = new PVector(random(-1, 1), 0);
    loca = n.get();
    lifespan = 100;
  }
  
  
  
}
