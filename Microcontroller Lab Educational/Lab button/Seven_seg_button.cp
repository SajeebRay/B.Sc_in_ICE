#line 1 "D:/Books/5th Semester/Microcontroller Project/Seven_seg_button.c"
char arraCC[] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
void main()
{
 int i = 0;
 TRISD = 0xff;
 TRISB = 0x00;
 TRISC = 0x00;
 portc = 0x00;
 portb = 0x7F;
 while(1)
 { portc.f0 = 0x00;
 portc.f1 = 0x00;
 if(portd.f0 == 0x00)
 {
 delay_ms(200);
 if(portd.f0 == 0x00)
 {
 if(i < 9)
 i++;
 }
 }
 if(portd.f1 == 0x00)
 {
 delay_ms(200);
 if(portd.f1 == 0x00)
 {
 if(i > 0)
 i--;
 }
 }
 portb = arraCC[i];
 }
}
