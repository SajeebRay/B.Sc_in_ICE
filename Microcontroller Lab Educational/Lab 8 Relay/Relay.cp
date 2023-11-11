#line 1 "D:/Books/5th Semester/ICE-3108/Relay.c"
void main() {
 TRISB = 0x00;
 portb = 0x00;
 while(1)
 {
 portb.f0 = 1;
 delay_ms(1000);
 portb.f0 = 0;
 delay_ms(1000);
 }
}
