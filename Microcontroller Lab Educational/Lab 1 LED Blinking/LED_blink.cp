#line 1 "D:/Books/5th Semester/Microcontroller Project/Lab 1 LED Blinking/LED_blink.c"
int onTime, offTime, timeCycle, i;
void main(){
 TRISB = 0x00;
 portb = 0x00;
 onTime = 2;
 timeCycle = 6;
 while(1){
 offTime = timeCycle-onTime;
 if(offTime == 0) break;

 for(i = 1; i <= onTime; i++){
 portb.f0 = 0xff;
 delay_ms(500);
 portb.f0 = 0x00;
 delay_ms(500);
 }
 for(i = 1; i <= offTime; i++){

 portb.f0 = 0x00;
 delay_ms(1000);
 }
 onTime++;
 }
}
