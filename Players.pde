class Players {
int xpos, ypos;
int type;
int playerSize = 30;

  
  

  Players(int x, int y, int playerType){
    xpos = x;
    ypos = y;
    type = playerType;
  }
  
  void update(){
    //collision();
    display();
    movement();
  }

  void collision(){
    int checkColor = get(xpos, ypos);
    
    print(checkColor);
  }

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
  
  void movement(){
    //movement workaround since processing has a hard time allowing multiple inputs
    if(keys[0] || a0 >= 100 && type == 1 && ypos > 15){
      ypos = ypos - 5;
    }
    if(keys[1] || a1 >= 175 && type == 1 && ypos <= 780){
      ypos = ypos + 5;
    }
    if(keys[2] || a2 >= 290 && type == 1 && xpos >= 20){
      xpos = xpos - 5;
    }
    if(keys[3] || a3 >= 215 && type == 1 && xpos <= 780){
      xpos = xpos + 5;
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
