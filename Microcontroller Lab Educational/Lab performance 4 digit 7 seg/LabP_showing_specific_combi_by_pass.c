char arraCC[] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
void main()
{
   int k = 0,  bt_zero = 0, bt_one = 0, bt_two = 0, bt_three  = 0;
   TRISB = 0x00;
   TRISC = 0x00;
   TRISD = 0xff;
   portb = 0x00;
   portc = 0x00;
   while(1)
   {
       if(portd.f1 == 0x00)  // click initialize
       {
          delay_ms(100);
          if(portd.f1 == 0x00)  // click stability check
          {
              bt_zero++;        // digit increment
              if(bt_zero == 10) // after 9, next is 0
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
       // pass 1 3 0 2, this show 1 0 1 1
       if(bt_zero == 1 && bt_one == 3 && bt_two == 0 && bt_three == 2) // checking password
       {
           portc.f4 = 0xff;
           portc.f5 = 0x00;
           portc.f6 = 0xff;
           portc.f7 = 0xff;
       }
       // pass 8 9 2 0, this show 1 1 0 0
       else if(bt_zero == 8 && bt_one == 9 && bt_two == 2 && bt_three == 0)
       {
           portc.f4 = 0xff;
           portc.f5 = 0xff;
           portc.f6 = 0x00;
           portc.f7 = 0x00;
       }
       else   // if password don't match
       {
           portc.f4 = 0x00;
           portc.f5 = 0x00;
           portc.f6 = 0x00;
           portc.f7 = 0x00;
       }

       portc.f0 = 0x00;   // active power for digit left
       portb = arraCC[bt_zero]; // provide data for left digit
       delay_ms(10);
       portc.f0 = 0xff;   // Deactive power for digit left

       portc.f1 = 0x00;     // active power for second digit
       portb = arraCC[bt_one];    // provide data for second digit
       delay_ms(10);
       portc.f1 = 0xff;      // deactive power for second digit
   
       portc.f2 = 0x00;   // active power for third digit
       portb = arraCC[bt_two]; // provide data for third digit
       delay_ms(10);
       portc.f2 = 0xff;   // Deactive power for third digit

       portc.f3 = 0x00;   // active power for digit right
       portb = arraCC[bt_three]; // provide data for right digit
       delay_ms(10);
       portc.f3 = 0xff;   // Deactive power for digit right
   }
}