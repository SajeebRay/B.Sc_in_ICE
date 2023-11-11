int i = 0;
void main() {
    TRISD = 0X00;
    portd = 0x00;
    while(1)
    {
       // positive movement
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
       //Negative dike
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