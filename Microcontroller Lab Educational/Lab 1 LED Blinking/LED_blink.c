int onTime, offTime, timeCycle, i;
void main(){
     TRISB = 0x00;
     portb = 0x00;
     onTime = 2;
     timeCycle = 6;
     while(1){
         offTime = timeCycle-onTime;
         if(offTime == 0) break;
         
         for(i = 1; i <= onTime; i++){ // inside loop 500+500=1000ms, 1second
           // onTime e blink dibe. off time e blink dibe na. majher delay gula calculate kore time hisab korte hoy
           portb.f0 = 0xff;
           delay_ms(500);
           portb.f0 = 0x00;
           delay_ms(500);
         }
         for(i = 1; i <= offTime; i++){
             // off time loop;
             portb.f0 = 0x00;
             delay_ms(1000);
         }
         onTime++;
     }
}