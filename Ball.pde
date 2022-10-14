//cerner_2tothe5th_2022
import javax.swing.JOptionPane;
int rad = 60;        
float xpos, ypos;    
float xspeed = 2.8; 
float yspeed = 2.2;  
int xdirection = 1;  
int ydirection = 1; 
float oHue=random(0,255);
String r = JOptionPane.showInputDialog(null, "How fast?", "Decide", JOptionPane.QUESTION_MESSAGE);
int Speed = Integer.parseInt(r);
void setup() {
  size(640, 360);
  strokeWeight(5);
  fill(oHue, 467, 400);
  frameRate(30);
  ellipseMode(RADIUS);
  xpos = width/2;
  ypos = height/2;}
  void draw() {
  background(102);
  xpos = xpos + ( xspeed * xdirection* Speed );
  ypos = ypos + ( yspeed * ydirection * Speed);
  if (xpos > width-rad || xpos < rad) {
    xdirection *= -1; }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;  }
  ellipse(xpos, ypos, rad, rad);
}
