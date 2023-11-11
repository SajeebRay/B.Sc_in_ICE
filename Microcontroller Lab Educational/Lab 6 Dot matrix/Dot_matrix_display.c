void main() {
     TRISC = 0x00;
     TRISD = 0x00;
     while(1)
     {
         PORTD = 0x80;
         PORTC = 0x00;
         delay_ms(5);

         PORTD = 0x40;
         PORTC = 0xff;
         delay_ms(5);

         PORTD = 0x20;
         PORTC = 0xff;
         delay_ms(5);

         PORTD = 0x10;
         PORTC = 0x18;
         delay_ms(5);

         PORTD = 0x08;
         PORTC = 0x18;
         delay_ms(5);

         PORTD = 0x04;
         PORTC = 0xff;
         delay_ms(5);

         PORTD = 0x02;
         PORTC = 0xff;
         delay_ms(5);

         PORTD = 0x01;
         PORTC = 0x00;
         delay_ms(5);
     }
}