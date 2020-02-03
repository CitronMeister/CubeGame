class Players {
int xpos, ypos;
int type;
int playerSize = 30;
int a0t, a1t, a2t, a3t;
  
  
// constuctor
  Players(int x, int y, int playerType){
    xpos = x;
    ypos = y;
    type = playerType;
  }
// all actions update function  
void update(){
    collision();
    display();
    movement();
  }
// collision with any colour but background
  void collision(){
    // get color for center of mass
    int checkColor = get(xpos, ypos);
    // check if its not grey
    if(checkColor != -12105913) {
      player1 = new Players(50, 50, 1);
      player2 = new Players(100, 50, 2);
    }
    println(checkColor);
  }
  // function to display player 1 & 2
  void display(){
    if(type == 1){
      pushStyle();
      fill(240, 0, 0);
      rect(xpos, ypos, playerSize, playerSize);
      popStyle();
    } else {
      pushStyle();
      fill(0, 0, 240);
      rect(xpos, ypos, playerSize, playerSize);
      popStyle();
    }
    
    
  }
  // movement of player 1 & 2
  void movement(){
    //arduino thresholds
    a0t = 100;
    a1t = 175;
    a2t = 290;
    a3t = 215;   
    
    //movement workaround since processing has a hard time allowing multiple inputs
    if(keys[0] && type == 1 || a0 >= a0t && type == 1 && ypos > 15){
      if(a3 >= a0t + 25){
        xpos = xpos + 5;
      } else {
        xpos = xpos + 3;
      }
    }
    if(keys[1] && type == 1 || a1 >= a1t && type == 1 && ypos <= 780){
      if(a3 >= a1t + 25){
        xpos = xpos + 5;
      } else {
        xpos = xpos + 3;
      }
    }
    if(keys[2] && type == 1 || a2 >= a2t && type == 1 && xpos >= 20){
      if(a3 >= a2t + 25){
        xpos = xpos + 5;
      } else {
        xpos = xpos + 3;
      }
    }
    if(keys[3] && type == 1 || a3 >= a3t && type == 1 && xpos <= 780){
      if(a3 >= a3t + 25){
        xpos = xpos + 5;
      } else {
        xpos = xpos + 3;
      }      
    }
    if(keys[4] && type == 2){
      ypos = ypos - 5;
    }
    if(keys[5] && type == 2){
      ypos = ypos + 5;
    }
    if(keys[6] && type == 2){
      xpos = xpos - 5;
    }
    if(keys[7] && type == 2){
      xpos = xpos + 5;
    }
  }
}
