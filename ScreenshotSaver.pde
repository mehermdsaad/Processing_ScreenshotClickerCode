// Short code to preserve my screenshots
// Double press 'S' to get a screenshot, saved in an "img" folder, will create one if non-existent 

//Using time for unique screenshot name
import java.time.LocalDate


//dummy setup and draw
void setup(){
  size(800,600);
}

void draw(){
  background(0);
}



int timeOfFirstKey = 0;
LocalDate dateStamp = LocalDate.now()

void keyPressed(){
    if (keyCode == 83){ // When S is pressed
        if(timeOfFirstKey == 0 || millis()-timeOfFirstKey > 1000){ //the time when the S key is pressed first 
            timeOfFirstKey=millis();
        }
        else if(millis()-timeOfFirstKey < 1000){ //When the next time S is pressed, 'i.e. double pressed' it compares if it is within a second or not
                saveFrame("img"+dateStamp+"/ss#####.jpg"); // if so then save the screenshot
                timeOfFirstKey = 0; // reset the timer
        }
    }
}
