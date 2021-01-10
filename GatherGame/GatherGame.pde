//GatherGame by Matthew Brumby 

character character1; // declared character object


collectable collectable1; // declaring collectables
collectable collectable2;
collectable collectable3;
collectable collectable4;
collectable collectable5;
collectable collectable6;
collectable collectable7;
collectable collectable8;
collectable collectable9;

void setup() // runs once
{
  size(1280,720); // size is 1280x720p

  character1 = new character(width/2,height/2,20);
  
  collectable1 = new collectable(20,50, 10);
  collectable2 = new collectable(900, 600, 10);
  collectable3 = new collectable(900, 600, 10);
  collectable4 = new collectable(900, 600, 10);
  collectable5 = new collectable(900, 600, 10);
  collectable6 = new collectable(900, 600, 10);
  collectable7 = new collectable(900, 600, 10);
  collectable8 = new collectable(900, 600, 10);
  collectable9 = new collectable(900, 600, 10);
}

void draw()
{
  switch(gameState.screen)
  {
    case 0:
      menuScreen();
      break;
    case 1:
      gameScreen();
      break;
    case 2:
      endScreen();
      break;
    default:
  }
}

public void menuScreen()
{
  background(0);
  textAlign(CENTER);
  text("Press enter to start", width/2, height/2);
}

public void gameScreen()
{
  background(0);
  text(1200, width*0.9, 20);
  
  character1.draw();
  collectable1.draw();
  collectable2.draw();
  collectable3.draw();
  collectable4.draw();
  collectable5.draw();
  collectable6.draw();
  collectable7.draw();
  collectable8.draw();
  collectable9.draw();
}

public void endScreen()
{
  background(0);
  text("Game Over", width/2, height/2);
}

public void keyPressed() // checks keys pressed, not based on movement
{
  if(key == ENTER)
  {
    if(gameState.screen == 0) // if the screen is set to main menu
    {
      gameState.gameStart(); // start the game
    }
    
    if(gameState.screen == 2)
    {
      gameState.gameStart();
    }
  }
}
