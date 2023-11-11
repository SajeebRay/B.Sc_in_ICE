
_main:

;LED_blink.c,1 :: 		void main(){
;LED_blink.c,2 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;LED_blink.c,3 :: 		TRISC = 0Xff;
	MOVLW      255
	MOVWF      TRISC+0
;LED_blink.c,4 :: 		portb = 0x00;
	CLRF       PORTB+0
;LED_blink.c,5 :: 		while(1){
L_main0:
;LED_blink.c,6 :: 		if(portc.f0 == 0xff)
	BTFSS      PORTC+0, 0
	GOTO       L_main2
;LED_blink.c,7 :: 		portb.f0 = 0xff;
	BSF        PORTB+0, 0
	GOTO       L_main3
L_main2:
;LED_blink.c,9 :: 		portb.f0 = 0x00;
	BCF        PORTB+0, 0
L_main3:
;LED_blink.c,10 :: 		}
	GOTO       L_main0
;LED_blink.c,11 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
