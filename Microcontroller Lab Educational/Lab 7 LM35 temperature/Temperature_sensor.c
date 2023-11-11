// LCD module connections
sbit LCD_RS at RB2_bit;
sbit LCD_EN at RB3_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;

sbit LCD_RS_Direction at TRISB2_bit;
sbit LCD_EN_Direction at TRISB3_bit;
sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;
// End LCD module connections

char cel[20], temp[40], far[20];
int i, k, valADC, farhen;
void main(){
  UART1_Init(9600); // Initialize UART module with baud rate 9600
  Lcd_Init();                        // Initialize LCD
  Lcd_Cmd(_LCD_CLEAR);               // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off

  i = 0;
  while(1) {
    //Read ADC value in RA2
    valADC = ADC_Read(0);
    farhen = (valADC * 9/5) + 32;
    //Convert into string/char array
    IntToStr(valADC,cel);
    IntToStr(farhen,far);

    Lcd_Out(1,1,"Celsius:");
    Lcd_Out(1,10,cel);                 // Write text in first row
    Lcd_Out(2,1,"Fahrenheit:");
    Lcd_Out(2,10,far);
  }
}