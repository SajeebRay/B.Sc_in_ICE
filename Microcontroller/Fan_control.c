void main() {
  unsigned short duty = 0;
  TRISB = 0x00;
  TRISC = 0x00;
  TRISD = 0xff;
  portb.f0 = 0xff; // initialize
  portb.f1 = 0x00;
  
  PWM1_Init(1000); // Initialize PWM
  PWM1_Start(); // start PWM
  PWM1_Set_Duty(duty); // set current duty for PWM1
  
  while(1)
  {
     // Increment Button Activities
      if(portd.f0 ==1)
      {
          delay_ms(200);
          if(duty <= 240)
          {
            if(portd.f0 == 1)
            {
               duty = duty +10;
               PWM1_Set_Duty(duty);
            }
          }
      }
      // Decrement Button Activities
      if(portd.f1 == 1)
      {
          delay_ms(200);
          if(duty >= 10)
          {
            if(portd.f1 == 1)
            {
                duty = duty - 1;
                PWM1_Set_Duty(duty);
            }
          }
      }
  }
}