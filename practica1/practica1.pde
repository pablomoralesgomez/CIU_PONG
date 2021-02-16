import processing.sound.*;
import gifAnimation.*;

Ball balon;
Player left;
Player right;
Playfield playfield;

SoundFile sonidoReboteBordes;
SoundFile sonidoRebotePalas;
SoundFile sonidoGol;

GifMaker miGIF;

void setup() {
  size(750, 500); 
  
  sonidoReboteBordes = new SoundFile(this, "bordes.wav");
  sonidoRebotePalas = new SoundFile(this, "palas.wav");
  sonidoGol = new SoundFile(this, "gol.wav");
  
  balon = new Ball(5, 30);
  left = new LeftPlayer();
  right = new RightPlayer();
  
  playfield = new Playfield(left, right, balon);
  
  miGIF = new GifMaker(this, "animacion.gif");
  miGIF.setRepeat(0) ;
}

void draw() {
  background(50);
  
  playfield.drawPlayfield();
  
  balon.drawBall();  
  right.drawPlayer();
  left.drawPlayer();
  
  playfield.checkCollitionLeftPLayer();
  playfield.checkCollitionRightPlayer();
  playfield.checkGoal();
  
  balon.checkBorderBounce();
  
  balon.updatePosition();
  right.movePlayer();
  left.movePlayer();
  
  miGIF.addFrame();
}

public void suenaGol() {
  sonidoGol.play();
}

public void suenaPala() {
  sonidoRebotePalas.play();
}

public void suenaRebote() {
  sonidoReboteBordes.play();
}

void mouseReleased() {
  miGIF.finish();
}
