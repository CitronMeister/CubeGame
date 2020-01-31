import processing.serial.*;
Serial myPort;  // Create object from Serial class
String val;     // Data received from the serial port

levels level = new levels();
Players player1 = new Players(50, 50, 1);
Players player2 = new Players(100, 50, 2);
boolean keys[] = new boolean [8];
int a0,a1,a2,a3;

void setup() {
  // arduino recieve
  //String portName = Serial.list()[COM PORT];  
  String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
  
  
  size(800, 800);
  rectMode(CENTER);
}

void draw() {
  background(71);
  level.level_1();
  player1.update();
  player2.update();
  
  
  

  if ( myPort.available() > 0) {  // If data is available,
    val = myPort.readStringUntil('\n');         // read it and store it in val
    } 
 // println(val); //print it out in the console
  if(val!=null){
    String[] values = val.trim().split(",");
    if(values.length == 4) {
      a0=Integer.parseInt(values[0]);
      a1=Integer.parseInt(values[1]);
      a2=Integer.parseInt(values[2]);
      a3=Integer.parseInt(values[3]);
    
      println(a0);
      println(a1);
      println(a2);
      println(a3);
      println();
    }
  }
}

 

void keyPressed() {
  if (key == 'w')        keys[0] = true;
  if (key == 's')        keys[1] = true;
  if (key == 'a')        keys[2] = true;
  if (key == 'd')        keys[3] = true;
  if (keyCode == UP)     keys[4] = true;
  if (keyCode == DOWN)   keys[5] = true;
  if (keyCode == LEFT)   keys[6] = true;
  if (keyCode == RIGHT)  keys[7] = true;
}

void keyReleased() {
  if (key == 'w')        keys[0] = false;
  if (key == 's')        keys[1] = false;
  if (key == 'a')        keys[2] = false;
  if (key == 'd')        keys[3] = false;
  if (keyCode == UP)     keys[4] = false;
  if (keyCode == DOWN)   keys[5] = false;
  if (keyCode == LEFT)   keys[6] = false;
  if (keyCode == RIGHT)  keys[7] = false;
}
