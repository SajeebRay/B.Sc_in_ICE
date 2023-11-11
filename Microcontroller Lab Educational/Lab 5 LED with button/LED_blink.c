void main(){
     TRISB = 0x00;
     TRISC = 0Xff;
     portb = 0x00;
     while(1){
         if(portc.f0 == 0xff)
             portb.f0 = 0xff;
         else
             portb.f0 = 0x00;
     }
}