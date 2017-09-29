//your code here
void setup()
{
  size( 400, 400 );//your code here
}
void draw()
{

}
class NormalParticle
{
  double myX, myY, myAngle, mySpeed;
  NormalParticle()
  {
    myX = ( Math.random() * 400 );
    myY = ( Math.random() * 400 );
    myAngle = 30;
    mySpeed = ( Math.random() * 10 );
    myColor = 255;
  }
  void move()
  {
    myX = myX + ( Math.cos() * mySpeed );
    myY = myY + ( Math.sin() * mySpeed );
  }
  void show()
  {
    fill( ( Math.random() * 255 ),( Math.random() * 255 ),( Math.random() * 255 ) );
    ellipse( myX, myY, 10, 10 );
  }
}
interface Particle
{
  //your code here
}
class OddballParticle //uses an interface
{
  
}
class JumboParticle //uses inheritance
{
  //your code here
}

