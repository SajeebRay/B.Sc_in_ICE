#line 1 "D:/Books/5th Semester/ICE-3108/two_digit_seven_seg.c"
#line 42 "D:/Books/5th Semester/ICE-3108/two_digit_seven_seg.c"
char arraCC[] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
void main()
{
 int mod = 0, res = 0, i = 0, k = 0, state = 1;
 TRISB = 0x00;
 TRISC = 0x00;
 TRISD = 0x00;
 portb = 0x00;
 portc = 0x00;
 portd = 0x00;


 OPTION_REGbits.T0CS = 0;
 OPTION_REGbits.PSA = 0;
 OPTION_REGbits.PS = 0b111;


 TMR0 = 0;

 while(1)
 {
 if(state == 1)
 portd.f7 = 1;
 for(i = 0; i <= 22; i++)
 {
 res = i/10;
 mod = i%10;
 for(k = 0; k < 50; k++)
 {
 portc.f0 = 0x00;
 portb = arraCC[res];
 delay_ms(10);
 portc.f0 = 0xff;

 portc.f1 = 0x00;
 portb = arraCC[mod];
 delay_ms(10);
 portc.f1 = 0xff;
 }
 }
 if(i > 22)
 {
 portd.f7 = 0;
 state = 0;
 }


 unsigned int time_elapsed_ms = TMR0 * (256 / FOSC) * (1 / (float)100000);


 }
}
