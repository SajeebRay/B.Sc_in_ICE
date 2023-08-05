void main() {
    TRISB.F0= 0x00; // set portB as output
    while(1){
      portb.f0 = 0xff;
      delay_ms(1000);
      portb.f0 = 0x00;
      delay_ms(1000);
    }
}