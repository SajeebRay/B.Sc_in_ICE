int i = 0;
void main() {
    TRISD = 0X00;
    portd = 0x00;
    TRISB = 0xff;
    while(1)
    {
       if(portb.f0 == 0xff){
          delay_ms(80);
          if(portb.f0 == 0xff){
              portd = 0b00001100;
          }
       }
       if(portb.f1 == 0xff){
          delay_ms(80);
          if(portb.f1 == 0xff){
              portd = 0b00000110;
          }
       }
       if(portb.f2 == 0xff){
          delay_ms(80);
          if(portb.f2 == 0xff){
              portd = 0b00000011;
          }
       }
       if(portb.f3 == 0xff){
          delay_ms(80);
          if(portb.f3 == 0xff){
              portd = 0b00001001;
          }
       }
    }
}