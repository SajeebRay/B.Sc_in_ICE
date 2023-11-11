#line 1 "D:/Books/5th Semester/Microcontroller Project/Lab 9 PWM and Bidirectional/Fan_control.c"
void main() {
 unsigned short duty = 0;
 TRISB = 0x00;
 TRISC = 0x00;
 TRISD = 0xff;
 portb.f0 = 0xff;
 portb.f1 = 0x00;

 PWM1_Init(1000);
 PWM1_Start();
 PWM1_Set_Duty(duty);

 while(1)
 {

 if(portd.f0 ==1)
 {
 delay_ms(200);
 if(duty <= 240)
 {
 if(portd.f0 == 1)
 {
 duty = duty +10;
 PWM1_Set_Duty(duty);
 }
 }
 }

 if(portd.f1 == 1)
 {
 delay_ms(200);
 if(duty >= 10)
 {
 if(portd.f1 == 1)
 {
 duty = duty - 1;
 PWM1_Set_Duty(duty);
 }
 }
 }
 }
}
