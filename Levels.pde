class levels {

  void level_1(){
    // wall blocks
    levelcount = 1;
    
    block(175, 25);
    block(175, 75);
    block(175, 125);
    block(175, 175);
    block(175, 225);
    block(175, 275);
    
    block(225, 275);
    block(275, 275);
    block(325, 275);
    
    block(325, 125);
    block(375, 125);
    block(425, 125);
    block(475, 125);
    block(525, 125);
    block(575, 125);
    block(625, 125);
    
    block(475, 175);
    block(475, 225);
    block(475, 275);
    block(475, 325);
    block(475, 375);
    block(475, 425);
    
    block(425, 425);
    block(375, 425);
    block(325, 425);
    block(275, 425);
    block(225, 425);
    block(175, 425);
    block(125, 425);
    block(75, 425);
    block(25, 425);
    
    block(675, 275);
    block(725, 275);
    block(775, 275);
    
    block(675, 325);
    block(675, 375);
    block(675, 425);
    block(675, 475);
    block(675, 525);
    block(675, 575);
    block(675, 625);
    
    block(625, 625);
    block(575, 625);
    block(525, 625);
    block(475, 625);    
    block(425, 625);
    block(375, 625);
    block(325, 625);
    block(275, 625);
    block(225, 625);
    block(175, 625);

  }
  
  //block function for making a wall 
  void block(int x, int y){
    fill(255, 255, 0);
    rect(x, y, 50, 50);
  }

}
