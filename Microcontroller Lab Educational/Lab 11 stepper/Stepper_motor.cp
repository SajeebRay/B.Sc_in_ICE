#line 1 "D:/Books/5th Semester/Microcontroller Project/Lab 11 stepper/Stepper_motor.c"
int i = 0;
void main() {
 TRISD = 0X00;
 portd = 0x00;
 while(1)
 {

 for(i=0; i < 100; i++){
 portd = 0b00001100;
 delay_ms(10);
 portd = 0b00000110;
 delay_ms(10);
 portd = 0b00000011;
 delay_ms(10);
 portd = 0b00001001;
 delay_ms(10);
 }
 delay_ms(500);

 for(i=0; i < 100; i++){
 portd = 0b00000011;
 delay_ms(10);
 portd = 0b00000110;
 delay_ms(10);
 portd = 0b00001100;
 delay_ms(10);
 portd = 0b00001001;
 delay_ms(10);
 }
 delay_ms(500);
 }
}
