int valADC, valADC1;
char x[4];
void main() {
  UART1_Init(9600);
  ADC_Init();
  while(1)
  {
    //Read ADC value in RA2
    valADC = ADC_Read(0);
    valADC1 = ADC_Read(1);
    //Convert into string/char array
    IntToStr(valADC,x);
    //print
    UART1_Write_Text("Analog value =");
    UART1_Write_Text(x);
    UART1_Write_Text("    ");
    IntToStr(valADC1,x);
    UART1_Write_Text("Analog value =");
    UART1_Write_Text(x);
    UART1_Write(13);
    Delay_ms(1000);
  }
    
}