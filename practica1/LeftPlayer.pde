
public class LeftPlayer extends Player {
  
  public LeftPlayer() {
    super();
    this.x = width/10;
    this.y = height/2 - (this.getPlayerWidth()/2);
  }
  
  @Override
  protected void drawPlayer() {
   stroke(255, 255, 0);
   strokeWeight(10);
   line(x, y, x, y + this.getPlayerWidth());
  }
  
  @Override
  protected void movePlayer() {
    if(keyPressed) {
      if(key == 'w' || key == 'W') {
        y -= this.getVelocity();
      } else if(key == 's' || key == 'S') {
        y += this.getVelocity();
      }
     
      if(y < 0) y = 0;
      if(y + this.getPlayerWidth() > height) y = height - this.getPlayerWidth();
    }
  }
}
