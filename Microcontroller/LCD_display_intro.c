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

char txt1[] = "Joy Guru";
char txt2[] = "Sajeeb Kumar Ray, Add: Shalongram, Jaldhaka, Nilphamari"; //40tar beshi rakhte pare na

void main(){
  int i;

  Lcd_Init();                        // Initialize LCD
  Lcd_Cmd(_LCD_CLEAR);               // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off

  Lcd_Out(1,5,txt1);                 // Write text in first row
  Lcd_Out(2,1,txt2);                 // Write text in second row

  Delay_ms(500);

  // Moving text
  for(i=0; i<0; i++) {               // Move text to the right 0 times
    Lcd_Cmd(_LCD_SHIFT_RIGHT);
    delay_ms(1000);
  }

  while(1) {                         // Endless loop
    for(i=0; i<20; i++) {             // Move text to the left 7 times
      Lcd_Cmd(_LCD_SHIFT_LEFT);
      delay_ms(150);
    }
    Lcd_Init();                        // Initialize LCD
    Lcd_Cmd(_LCD_CLEAR);               // Clear display
    Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
    Lcd_Out(1,15,txt1);                 // Write text in first row
    Lcd_Out(2,15,txt2);
    delay_ms(250);
  }
}