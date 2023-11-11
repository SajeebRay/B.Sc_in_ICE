
//LCD Module Connection
// Lcd pinout settings
sbit LCD_RS at RB0_bit;
sbit LCD_EN at RB1_bit;
sbit LCD_D4 at RB2_bit;
sbit LCD_D5 at RB3_bit;
sbit LCD_D6 at RB4_bit;
sbit LCD_D7 at RB5_bit;

// Pin direction
sbit LCD_RS_Direction at TRISB0_bit;
sbit LCD_EN_Direction at TRISB1_bit;
sbit LCD_D4_Direction at TRISB2_bit;
sbit LCD_D5_Direction at TRISB3_bit;
sbit LCD_D6_Direction at TRISB4_bit;
sbit LCD_D7_Direction at TRISB5_bit;

sbit coil_A_1 at RD0_bit;
sbit coil_A_2 at RD1_bit;
sbit coil_B_1 at RD2_bit;
sbit coil_B_2 at RD3_bit;

char display[20];
unsigned int result = 45;
unsigned int stepping_angle = 0;
int i;

void main() {
     TRISB = 0x00; // Set PORTB as output
     TRISD = 0x00; // Set PORTD as output for stepper motor control

     lcd_init();
     lcd_cmd(_lcd_clear);
     lcd_cmd(_LCD_CURSOR_OFF);

     while(1) {
         lcd_out(1, 1,"Step: ");
         lcd_out(2, 2,"Code by Sajeeb");


         // Control stepper motor
         // (include your stepper motor control code here)
          for(i = 0; i < 200; i++) {
             stepping_angle += 30;
             IntToStr(stepping_angle, display);
             lcd_out(1, 5, display);
             portd = 0b00001100;
             delay_ms(500);
             
             stepping_angle += 30;
             IntToStr(stepping_angle, display);
             lcd_out(1, 5, display);
             portd = 0b00000110;
             delay_ms(500);
             
             stepping_angle += 30;
             IntToStr(stepping_angle, display);
             lcd_out(1, 5, display);
             portd = 0b00000011;
             delay_ms(500);
             
             stepping_angle += 30;
             IntToStr(stepping_angle, display);
             lcd_out(1, 5, display);
             portd = 0b00001001;
             delay_ms(500);
             if(stepping_angle == 360) stepping_angle = 0;
         }

         // Delay before starting another revolution
         //delay_ms(1500);
     }
}