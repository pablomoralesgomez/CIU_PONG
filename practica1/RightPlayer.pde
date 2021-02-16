
public class RightPlayer extends Player {
  
  public RightPlayer() {
    super();
    this.x = width/10 * 9;
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
      if(key == 'u' || key == 'U') {
        y -= this.getVelocity();
      } else if(key == 'j' || key == 'J') {
        y += this.getVelocity();
      }
     
      if(y < 0) y = 0;
      if(y + this.getPlayerWidth() > height) y = height - this.getPlayerWidth();
    }
  }
}
