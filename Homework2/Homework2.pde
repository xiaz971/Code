int xPosition;
int yPosition;
int xSpeed = 10 ;
int ySpeed = 8 ;


void setup() {
  size( 500, 500) ;
  xPosition = width/2;
  yPosition = height/2;
  
}

void draw() {
  //mouse position + circle radius = position
  //mouseX mouseY
  background(255, 255, 0) ;
  
  fill(255, 0, 0) ; 
  if((mouseX <= xPosition+25 && mouseX >= xPosition-25) && (mouseY <= yPosition+25 && mouseY >= yPosition-25)) {
    fill(0, 255, 0) ;
  }

  rect(xPosition, yPosition, 100, 150) ;
  
  //xPosition = xPosition + 1 ;
  //xPosition += 1 ; //most flexiable one
  //xPosition++ ; //only for plus 1
  
  if(xPosition > width || xPosition < 0) {
    xSpeed = xSpeed * -1 ;
  }
  if (yPosition > height || yPosition < 0) {
    ySpeed = ySpeed * -1 ;
  }
  
  xPosition = xPosition + xSpeed ;
  yPosition = yPosition + ySpeed ;
  
  fill(0, 0, 0) ; 
  if((mouseX <= xPosition+25 && mouseX >= xPosition-25) && (mouseY <= yPosition+25 && mouseY >= yPosition-25)) {
    fill(0, 255, 0) ;
  }

  rect(xPosition, yPosition, 100, 150) ;
  
  //xPosition = xPosition + 1 ;
  //xPosition += 1 ; //most flexiable one
  //xPosition++ ; //only for plus 1
  
  if(xPosition > width || xPosition < 0) {
    xSpeed = xSpeed * -1 ;
  }
  if (yPosition > height || yPosition < 0) {
    ySpeed = ySpeed * -1 ;
  }
  
  xPosition = xPosition + xSpeed ;
  yPosition = yPosition + ySpeed ;
}