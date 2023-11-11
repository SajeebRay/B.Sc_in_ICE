#line 1 "D:/Books/5th Semester/ICE-3108/LabP_showing_specific_combi_by_pass.c"
char arraCC[] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
void main()
{
 int k = 0, bt_zero = 0, bt_one = 0, bt_two = 0, bt_three = 0;
 TRISB = 0x00;
 TRISC = 0x00;
 TRISD = 0xff;
 portb = 0x00;
 portc = 0x00;
 while(1)
 {
 if(portd.f1 == 0x00)
 {
 delay_ms(100);
 if(portd.f1 == 0x00)
 {
 bt_zero++;
 if(bt_zero == 10)
 {
 bt_zero = 0;
 }
 }
 }
 if(portd.f2 == 0x00)
 {
 delay_ms(100);
 if(portd.f2 == 0x00)
 {
 bt_one++;
 if(bt_one == 10)
 {
 bt_one = 0;
 }
 }
 }
 if(portd.f3 == 0x00)
 {
 delay_ms(100);
 if(portd.f3 == 0x00)
 {
 bt_two++;
 if(bt_two == 10)
 {
 bt_two = 0;
 }
 }
 }
 if(portd.f4 == 0x00)
 {
 delay_ms(100);
 if(portd.f4 == 0x00)
 {
 bt_three++;
 if(bt_three == 10)
 {
 bt_three = 0;
 }
 }
 }

 if(bt_zero == 1 && bt_one == 3 && bt_two == 0 && bt_three == 2)
 {
 portc.f4 = 0xff;
 portc.f5 = 0x00;
 portc.f6 = 0xff;
 portc.f7 = 0xff;
 }

 else if(bt_zero == 8 && bt_one == 9 && bt_two == 2 && bt_three == 0)
 {
 portc.f4 = 0xff;
 portc.f5 = 0xff;
 portc.f6 = 0x00;
 portc.f7 = 0x00;
 }
 else
 {
 portc.f4 = 0x00;
 portc.f5 = 0x00;
 portc.f6 = 0x00;
 portc.f7 = 0x00;
 }

 portc.f0 = 0x00;
 portb = arraCC[bt_zero];
 delay_ms(10);
 portc.f0 = 0xff;

 portc.f1 = 0x00;
 portb = arraCC[bt_one];
 delay_ms(10);
 portc.f1 = 0xff;

 portc.f2 = 0x00;
 portb = arraCC[bt_two];
 delay_ms(10);
 portc.f2 = 0xff;

 portc.f3 = 0x00;
 portb = arraCC[bt_three];
 delay_ms(10);
 portc.f3 = 0xff;
 }
}
