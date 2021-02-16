
public abstract class Player{
  private int velocity = 7;
  private int score = 0;
  private int playerWidth = 75;
  
  protected int x;
  protected int y;
  
  protected int getX() {
    return x;
  }
  
  protected int getY() {
    return y;
  }
  
  protected int getScore() {
    return score;
  }
  
  protected int getVelocity() {
    return velocity;
  }
  
  protected int getPlayerWidth() {
    return playerWidth;
  }
  
  protected void reset() {
    y = height/2 - (this.getPlayerWidth()/2);
  }
  
  protected abstract void movePlayer();
  protected abstract void drawPlayer();
}
