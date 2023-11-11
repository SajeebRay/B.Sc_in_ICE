char arraCC[] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
void main() 
{
   int mod = 0, res = 0, i = 0, k = 0, state = 1;
   TRISB = 0x00;
   portb = 0x00;
   TRISC = 0x00;
   portc = 0x00;
   while(1)
   {
       for(i = 0; i <= 22; i++)
       {
           res  = i/10;
           mod = i%10;
           for(k = 0; k < 50; k++)
           {
               portc.f0 = 0x00;   // active power for digit left
               portb = arraCC[res]; // provide data for two digit
               delay_ms(10);
               portc.f0 = 0xff;   // Deactive power for digit right

               portc.f1 = 0x00;     // active power for digit right
               portb = arraCC[mod];
               delay_ms(10);
               portc.f1 = 0xff;      // deactive power for digit left
           }
       }
   }
}