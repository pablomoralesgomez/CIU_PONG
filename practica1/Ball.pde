
public class Ball {
  
  private int x;            // Centro de la pelota
  private int y;
  
  private int xVelocity;    // Velocidad a la que se desplaza
  private int yVelocity;
  
  private int ballDiameter;
  
  public Ball(int xVelocity, int ballDiameter) {
    this.x = width/2;
    this.y = height/2;
    if(random(-1, 1) > 0) {
      this.xVelocity = xVelocity;
    } else {
      this.xVelocity = -xVelocity;
    }
    this.yVelocity = 0;
    this.ballDiameter = ballDiameter;
  }
  
  private void drawBall() {
    noStroke();
    fill(204, 204, 0);
    ellipse(x, y, ballDiameter, ballDiameter);
  }
  
  private void updatePosition() {
    x += xVelocity;
    y += yVelocity;
  }
  
  private void reset(char scorer) {
     x = width/2;
     y = height/2;
  
    setYVelocity(0);
    if(scorer == 'l') setXVelocity(5);
    if(scorer == 'r') setXVelocity(-5);
  }
  
  private void setXVelocity(int newVelocity) {
    this.xVelocity = newVelocity;
  }
  
  private void setYVelocity(int newVelocity) {
    this.yVelocity = newVelocity;
  }
  
  private int getX() {
    return x;
  }
  
  private int getY() {
    return y;
  }
  
  private int getRadius() {
    return ballDiameter / 2;
  }
  
  private int getXVelocity() {
    return xVelocity;
  }
  
  private int getYVelocity() {
    return yVelocity;
  }
  
  private void checkBorderBounce() {
    if(y - getRadius() <= 0 || y + getRadius() >= height) {
      yVelocity *= -1;
      thread("suenaRebote");
    } 
  }
}
