void main() {
  TRISB = 0x00;
  portb = 0x00;
  while(1)
  {
    if(portc.f0 == 0xff){
       delay_ms(80);
       if(portc.f0 == 0xff){
          portb.f2 = 0xff; // enable
          portb.f0 = 0xff;
          portb.f1 = 0x00;
       }
    }
    if(portc.f1 == 0xff){
       delay_ms(80);
       if(portc.f1 == 0xff){
          portb.f2 = 0x00;   // disable
       }
    }
    if(portc.f2 == 0xff){
       delay_ms(80);
       if(portc.f2 == 0xff){
          portb.f2 = 0xff; // enable
          portb.f0 = 0x00;
          portb.f1 = 0xff;
       }
    }
  }
  
}