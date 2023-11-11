char arraCA[] = {0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
int digit1 = 0, digit2 = 0, digit3 = 0, digit4 = 0;
void main() {
   TRISB = TRISC = 0x00;
   portb = portc = 0x00;
   TRISD = 0xff;
   while(1){
       if(portd.f0 == 0xff){
          delay_ms(80);
          if(portd.f0 == 0xff){
             digit1++;
             if(digit1 == 10)
                digit1 = 0;
          }
       }
       if(portd.f1 == 0xff){
          delay_ms(80);
          if(portd.f1 == 0xff){
             digit2++;
             if(digit2 == 10)
                digit2 = 0;
          }
       }
       if(portd.f2 == 0xff){
          delay_ms(80);
          if(portd.f2 == 0xff){
             digit3++;
             if(digit3 == 10)
                digit3 = 0;
          }
       }
       if(portd.f3 == 0xff){
          delay_ms(80);
          if(portd.f3 == 0xff){
             digit4++;
             if(digit4 == 10)
                digit4 = 0;
          }
       }
       // display
       portc.f0 = 0xff;
       portb = arraCA[digit1];
       delay_ms(5);
       portc.f0 = 0x00;
       
       portc.f1 = 0xff;
       portb = arraCA[digit2];
       delay_ms(5);
       portc.f1 = 0x00;
       
       portc.f2 = 0xff;
       portb = arraCA[digit3];
       delay_ms(5);
       portc.f2 = 0x00;
       
       portc.f3 = 0xff;
       portb = arraCA[digit4];
       delay_ms(5);
       portc.f3 = 0x00;
       
   }
}