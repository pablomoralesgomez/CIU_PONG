
public class Playfield {
  private int rightScore = 0;
  private int leftScore = 0;
  
  private Player leftPlayer;
  private Player rightPlayer;
  private Ball balon;
 
  
  public Playfield(Player left, Player right, Ball balon) {
    this.leftPlayer = left;
    this.rightPlayer = right;
    this.balon = balon;
  }
  
  private void drawPlayfield() {
    int lineLength = 25;
    for(int i = 0; i <= 100; i = i + 2) {
      stroke(255, 255, 0);
      strokeWeight(2);
      line(width/2, lineLength *(i - 1), width/2, lineLength * i);
    }
    
    textSize(64);
    text(leftScore, width/4, height/7);
    text(rightScore, width/4*3, height/7);
    
  }
  
  private void checkCollitionLeftPLayer() {
    if(balon.getX() - balon.getRadius() <= leftPlayer.getX() && balon.getX() - balon.getRadius() >= leftPlayer.getX() - abs(balon.getXVelocity())) {
  
      int playerWidthFifth = leftPlayer.getPlayerWidth()/5;
      
      if(balon.getY() >= leftPlayer.getY() && balon.getY()  <=  leftPlayer.getY() + playerWidthFifth) {
        balon.setXVelocity(5);
        leftChangeYVelocity(7);
        thread("suenaPala");
      } else if(balon.getY()  > leftPlayer.getY() + playerWidthFifth && balon.getY()  <= leftPlayer.getY() + playerWidthFifth*2) {
        balon.setXVelocity(7);
        leftChangeYVelocity(5);
        thread("suenaPala");
      } else if(balon.getY()  > leftPlayer.getY() + playerWidthFifth*2 && balon.getY()  <= leftPlayer.getY() + playerWidthFifth*3) {
        balon.setXVelocity(10);
        leftChangeYVelocity(3);
        thread("suenaPala");
      } else if(balon.getY()  > leftPlayer.getY() + playerWidthFifth*3 && balon.getY()  <= leftPlayer.getY() + playerWidthFifth*4) {
        balon.setXVelocity(7);
        leftChangeYVelocity(5);
        thread("suenaPala");
      } else if(balon.getY()  > leftPlayer.getY() + playerWidthFifth*4 && balon.getY()  <= leftPlayer.getY() + leftPlayer.getPlayerWidth()) {
        balon.setXVelocity(5);
        leftChangeYVelocity(7);
        thread("suenaPala");
      }
    }
  }
  
  private void leftChangeYVelocity(int newVelocity) {
    if(keyPressed) {
      if(key == 's' || key == 'S') {
        balon.setYVelocity(newVelocity);
      } else if(key == 'w' || key == 'W') {
        balon.setYVelocity(-newVelocity);
      }
    } else if(balon.getYVelocity() != 0){
      if(balon.getYVelocity() > 0)  balon.setYVelocity(balon.getYVelocity()- 1);
      if(balon.getYVelocity() < 0)  balon.setYVelocity(balon.getYVelocity()+ 1);
    }
  }
  
  private void checkCollitionRightPlayer() {
    if(balon.getX() + balon.getRadius() >= rightPlayer.getX() && balon.getX() + balon.getRadius() <= rightPlayer.getX()  + abs(balon.getXVelocity())) {
      
      int playerWidthFifth = rightPlayer.getPlayerWidth()/5;
      
      if(balon.getY() >= rightPlayer.getY() && balon.getY() <=  rightPlayer.getY() + playerWidthFifth) {
        balon.setXVelocity(- 5);
        rightChangeYVelocity(7);
        thread("suenaPala");
      } else if(balon.getY() > rightPlayer.getY() + playerWidthFifth && balon.getY() <= rightPlayer.getY() + playerWidthFifth*2) {
        balon.setXVelocity(- 7);
        rightChangeYVelocity(5);
        thread("suenaPala");
      } else if(balon.getY() > rightPlayer.getY() + playerWidthFifth*2 && balon.getY() <= rightPlayer.getY() + playerWidthFifth*3) {
        balon.setXVelocity(- 10);
        rightChangeYVelocity(3);
        thread("suenaPala");
      } else if(balon.getY() > rightPlayer.getY() + playerWidthFifth*3 && balon.getY() <= rightPlayer.getY() + playerWidthFifth*4) {
        balon.setXVelocity(- 7);
        rightChangeYVelocity(5);
        thread("suenaPala");
      } else if(balon.getY() > rightPlayer.getY() + playerWidthFifth*4 && balon.getY() <= rightPlayer.getY() + rightPlayer.getPlayerWidth()) {
        balon.setXVelocity(- 5);
        rightChangeYVelocity(7);
        thread("suenaPala");
      }
    }
  }
  
  private void rightChangeYVelocity(int newVelocity) {
    if(keyPressed) {
      if(key == 'j' || key == 'J') {
        balon.setYVelocity(newVelocity);
      } else if(key == 'u' || key == 'U') {
        balon.setYVelocity(-newVelocity);
      }
    } else if(balon.getYVelocity() != 0){
      if(balon.getYVelocity() > 0)  balon.setYVelocity(balon.getYVelocity()- 1);
      if(balon.getYVelocity() < 0)  balon.setYVelocity(balon.getYVelocity()+ 1);
    }
  }
  
  private void checkGoal() {
    if (balon.getX() <=  0) {
      rightScore++;
      thread("suenaGol"); 
      balon.reset('r');
      rightPlayer.reset();
      leftPlayer.reset();
    } else if(balon.getX() >= width) {
      leftScore++;
      thread("suenaGol");
      balon.reset('l');
      leftPlayer.reset();
      rightPlayer.reset();
    }
  }
  


}
