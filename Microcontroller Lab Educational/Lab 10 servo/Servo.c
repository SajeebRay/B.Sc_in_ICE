void rotateLeft90();
void rotateZero();
void rotateRight90();
int i;
void main() {
    TRISB = 0X00;
    TRISC = 0XFF;
    portb = 0x00;
    rotateZero();
    while(1) {
        if(portc.f0 == 0xff) {
            rotateLeft90();
        }
        if(portc.f1 == 0xff) {
            rotateZero();
        }
        if(portc.f2 == 0xff) {
            rotateRight90();
        }
    }
}
void rotateLeft90() {    
     for(i=0;i<50;i++) {
          portb.f0=1;
          delay_us(800);
          portb.f0=0;
          delay_us(19200);
     }
}
void rotateZero() {    
     for(i=0;i<50;i++) {   
        portb.f0=1;
        delay_us(1500);        
        portb.f0=0;
        delay_us(18500);    
     }
}
void rotateRight90() {    
     for(i=0;i<50;i++) {        
          portb.f0=1;
          delay_us(2200);
          portb.f0=0;
          delay_us(17800);    
     }
}