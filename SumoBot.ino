//Code for hacking 2 dc motor used in Toy RC

int motorlc = 8; // ---->forward
int motorla = 9; //  ---->backward
int motorrc = 12; // ----->left
int motorra = 13; //  ----->right
String readString;

void setup() {     // presenting pins as outputs
  
  pinMode(motorlc, OUTPUT);
  pinMode(motorla, OUTPUT);
  pinMode(motorrc, OUTPUT);
  pinMode(motorra, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  while(Serial.available()){ // the code here is for bluetooth
  delay(3);
  char c = Serial.read();
  readString += c;
  }
  if(readString.length() > 0){ // when a certain button is pressed the reaction will be...
    Serial.println(readString);
  if(readString == "for"){
    
    digitalWrite(motorlc, HIGH);
    digitalWrite(motorla, LOW);
    digitalWrite(motorrc, LOW);
    digitalWrite(motorra, LOW);
  }
  if(readString == "back"){
    
    digitalWrite(motorlc, LOW);
    digitalWrite(motorla, HIGH);
    digitalWrite(motorrc, LOW);
    digitalWrite(motorra, LOW);
  }
  if(readString == "left"){
    
    digitalWrite(motorlc, LOW);
    digitalWrite(motorla, LOW);
    digitalWrite(motorrc, HIGH);
    digitalWrite(motorra, LOW);
  }
  if(readString == "right"){
    
    digitalWrite(motorlc, LOW);
    digitalWrite(motorla, LOW);
    digitalWrite(motorrc, LOW);
    digitalWrite(motorra, HIGH);
  }
    
  if(readString == "forl"){
    
    digitalWrite(motorlc, HIGH);
    digitalWrite(motorla, LOW);
    digitalWrite(motorrc, HIGH);
    digitalWrite(motorra, LOW);
  }
  if(readString == "forr"){
    
    digitalWrite(motorlc, HIGH);
    digitalWrite(motorla, LOW);
    digitalWrite(motorrc, LOW);
    digitalWrite(motorra, HIGH);
  }
    
  if(readString == "backl"){
    
    digitalWrite(motorlc, LOW);
    digitalWrite(motorla, HIGH);
    digitalWrite(motorrc, HIGH);
    digitalWrite(motorra, LOW);
  }
    
  if(readString == "backr"){
    
    digitalWrite(motorlc, LOW);
    digitalWrite(motorla, HIGH);
    digitalWrite(motorrc, LOW);
    digitalWrite(motorra, HIGH);
  }
    
  if(readString == "stop"){
   
    digitalWrite(motorlc, LOW);
    digitalWrite(motorla, LOW);
    digitalWrite(motorrc, LOW);
    digitalWrite(motorra, LOW);
  }
  }
  readString="";
  }
