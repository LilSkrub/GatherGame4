class collectable
{
  int size = 10;
  int x;
  int y;
  
  collectable(int x, int y, int size)
  {
   this.x = x;
   this.y = y;
   this.size = size;
  }
  
    public void draw()
  {
    this.render();
  }
  
  private void render()
  {
    stroke(255,0,0); //moving ball outline
    fill(255,255,0); //moving ball fill
    
    circle((int)x,(int)y,size); // moving ball position and diameter
    
  }
  
}
