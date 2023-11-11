#line 1 "D:/Books/5th Semester/Microcontroller Project/Practice.c"
char arraCA[] = {0xC0, 0xF9, 0xA4, 0xB0, 0x99,0x92, 0x82, 0xF8, 0x80, 0x90};
unsigned short time, set, unset, digit1, digit2, i;
void display(unsigned short time){

 digit2 = time%10;
 digit1 = (time/10)%10;
 portc.f0 = 0xff;
 portb = arraCA[digit1];
 delay_ms(10);
 portc.f0 = 0x00;
 portc.f1 = 0xff;
 portb = arraCA[digit2];
 delay_ms(10);
 portc.f1 = 0x00;
}
void main() {
 TRISB = 0x00;
 TRISC = 0x00;
 TRISD = 0xff;
 portb = portc = 0x00;

 if(EEPROM_Read(0x02) == 0xff){
 time = 0;
 } else time = EEPROM_Read(0x02);

 while(1){
 if(set == 0){
 if(portd.f0 == 0xff){
 delay_ms(80);
 if(portd.f0 = 0xff){
 if(time > 0){
 time--;
 EEPROM_Write(0x02,time);
 }
 }
 }
 if(portd.f1 == 0xff){
 delay_ms(80);
 if(portd.f1 = 0xff){
 if(time < 250) {
 time++;
 EEPROM_Write(0x02,time);
 }
 }
 }
 if(portd.f4 == 0xff){
 delay_ms(200);
 if(portd.f4 = 0xff){
 set = 1;
 }
 }
 display(time);
 portc.f7 = 0x00;
 }

 if(set == 1){
 portc.f7 = 0xff;
 while(time){
 for(i = 0;i < 50; i++){
 display(time);
 if(portd.f4 == 0xff){
 delay_ms(200);
 if(portd.f4 = 0xff){
 set = 0;
 break;
 }
 }
 }
 time--;
 EEPROM_Write(0x02,time);
 if(time == 0) set = 0;
 if(set == 0) break;
 }
 }
 }
}
