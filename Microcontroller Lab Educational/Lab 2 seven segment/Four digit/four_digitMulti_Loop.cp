#line 1 "D:/Books/5th Semester/Microcontroller Project/Lab 2 seven segment/four_digitMulti_Loop.c"
char arraCA[] = {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
int digit1, digit2, digit3, digit4, number, delay;
void main() {
 TRISB = TRISC = 0x00;
 portb = portc = 0x00;
 while(1){
 for(number = 2123; number < 2134; number++){
 digit4 = number%10;
 digit3 = (number/10)%10;
 digit2 = (number/100)%10;
 digit1 = (number/1000)%10;
 for(delay = 0; delay < 50; delay++){

 portc.f0 = 0xff;
 portb = arraCA[digit1];
 delay_ms(5);
 portc.f0 = 0x00;

 portc.f1 = 0xff;
 portb = arraCA[digit2];
 delay_ms(5);
 portc.f1 = 0x00;

 portc.f2 = 0xff;
 portb = arraCA[digit3];
 delay_ms(5);
 portc.f2 = 0x00;

 portc.f3 = 0xff;
 portb = arraCA[digit4];
 delay_ms(5);
 portc.f3 = 0x00;
 }

 }

 }
}
