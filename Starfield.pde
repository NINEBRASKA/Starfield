Particle[] Star = new Particle[1000];
void setup()
{
  size( 1000, 1000 );
  for( int i = 0; i < Star.length; i++ )
  {
    Star[i] = new NormalParticle();
  }
  for ( int k = 0; k < Star.length/2; k++ )
  {
    Star[k] = new JumboParticle();
  }
  Star[0] = new OddballParticle();
}
void draw()
{
  background(0);
  for( int j = 0; j < Star.length; j++ )
  {
    Star[j].show();
    Star[j].move();
  }
}
class NormalParticle implements Particle
{
  int myColor;
  double myX, myY, myAngle, mySpeed;
  NormalParticle()
  {
    myX = ( 500 );
    myY = ( 500 );
    myAngle = Math.random() * 360; 
    mySpeed = ( Math.random() * 100 );
    myColor = color( (int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255) );
  }
  public void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  public void show()
  {
    fill( myColor );
    ellipse( (int)myX, (int)myY, 10, 10 );
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  int myX, myY;
  OddballParticle()
  {
    myX = myY = 500;
  }
  void move(){}
  void show()
  {
    fill( 0, 255, 0 );
    ellipse( myX, myY, 50, 50 );
  }
}
class JumboParticle extends NormalParticle
{
  public void show()
  {
  fill( 255, 255, 255 );
  ellipse( (int)myX, (int)myY, 20, 20 );
  }
}
