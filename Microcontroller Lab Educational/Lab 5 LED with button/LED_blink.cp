#line 1 "D:/Books/5th Semester/Microcontroller Project/Lab 5 LED with button/LED_blink.c"
void main(){
 TRISB = 0x00;
 TRISC = 0Xff;
 portb = 0x00;
 while(1){
 if(portc.f0 == 0xff)
 portb.f0 = 0xff;
 else
 portb.f0 = 0x00;
 }
}
