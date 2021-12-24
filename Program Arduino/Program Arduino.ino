//pengaturan kecepatan motor DC
const int PIN_BASE=11;     
void setup() {
    pinMode(PIN_BASE, OUTPUT);       //pin 11 sebagai keluaran   
    Serial.begin(9600);
}
//kecepatan motor DC
int cepat=255;
int sedang=128;
int mati=0;
void loop() {
//sinyal analog membaca kecepatan motor DC
    boolean benar = true;
    String perintah = "";
    while (Serial.available() != 0) {
    perintah = perintah + char(Serial.read());
    delay(20);
    }
    if (perintah.length() == 0)
        return;
    perintah.trim();
  
    if (perintah == "cepat" || perintah == "CEPAT"){
        analogWrite(PIN_BASE, cepat);    //kecepatan motor dc kencang  
        Serial.print("Kecepatan Motor = ");
        Serial.println(cepat);
        }
        else if (perintah == "sedang"){
                 analogWrite(PIN_BASE, sedang);  //kecepatan motor dc sedang
                 Serial.print("Kecepatan Motor = "); 
                 Serial.println(sedang);
        }
        else if (perintah == "mati"){
                  analogWrite(PIN_BASE, mati);    //kecepatn motor dc mati
                  Serial.print("Kecepatan Motor = ");
                  Serial.println(mati);           
        }
        else
            benar = false;

        if(!benar){
            Serial.println("Perintah yang benar:");
            Serial.println("cepat,sedang,mati");
        }
}
