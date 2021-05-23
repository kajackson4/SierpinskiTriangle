public void setup()
{
  size(400, 400);
}
public void draw()
{
  sierpinski(100, 300, 200);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
      fill((int)(Math.random()*200)+60, (int)(Math.random()*200)+60, (int)(Math.random()*200)+60);
      triangle((float)x, (float)y, (float)(x+len), (float)(y), (float)(x+len/2), (float)(y-len));
    } else {
      sierpinski(x, y, (int)(len/2));
      sierpinski((int)(x+len/2), y, (int)(len/2));
      sierpinski((int)(x+len/4), (int)(y-len/2), (int)(len/2));
    }
}
