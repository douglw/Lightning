PImage cloud, cityBG; 

int startX = 150;
int startY = 20;
int endX = 150;
int endY = 0;

void setup()
{
  size(300, 300);
  stroke(#F7EA73);
  strokeWeight(3);
  noLoop();
  cloud = loadImage("cloud.png");
  cityBG = loadImage("city.png");
  image(cloud, -20, -20);
  image(cityBG,0,0,width,height);
}
void draw()
{
  background(#302240, 10);
  cloud.resize(0, 100);
  image(cityBG,0,0,width,height);
  while (endY <= 300) {
    stroke(#F7EA73);
    image(cloud, -20, -20); // I added another one of the image because the lightning keeps overlapping the orignal image
    stroke(#FFF598);
    endX = startX + (int)(Math.random() * 20) - 10;
    endY = startY + (int)(Math.random() * 15);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX = (int)(Math.random() * 150) + 100; 
  startY = 20;
  endX = 150;
  endY = 0;
  redraw();
}

