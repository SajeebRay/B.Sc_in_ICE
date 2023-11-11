
_main:

;LED_blink.c,2 :: 		void main(){
;LED_blink.c,3 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;LED_blink.c,4 :: 		portb = 0x00;
	CLRF       PORTB+0
;LED_blink.c,5 :: 		onTime = 2;
	MOVLW      2
	MOVWF      _onTime+0
	MOVLW      0
	MOVWF      _onTime+1
;LED_blink.c,6 :: 		timeCycle = 6;
	MOVLW      6
	MOVWF      _timeCycle+0
	MOVLW      0
	MOVWF      _timeCycle+1
;LED_blink.c,7 :: 		while(1){
L_main0:
;LED_blink.c,8 :: 		offTime = timeCycle-onTime;
	MOVF       _onTime+0, 0
	SUBWF      _timeCycle+0, 0
	MOVWF      R1+0
	MOVF       _onTime+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _timeCycle+1, 0
	MOVWF      R1+1
	MOVF       R1+0, 0
	MOVWF      _offTime+0
	MOVF       R1+1, 0
	MOVWF      _offTime+1
;LED_blink.c,9 :: 		if(offTime == 0) break;
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVLW      0
	XORWF      R1+0, 0
L__main13:
	BTFSS      STATUS+0, 2
	GOTO       L_main2
	GOTO       L_main1
L_main2:
;LED_blink.c,11 :: 		for(i = 1; i <= onTime; i++){ // inside loop 500+500=1000ms, 1second
	MOVLW      1
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
L_main3:
	MOVLW      128
	XORWF      _onTime+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main14
	MOVF       _i+0, 0
	SUBWF      _onTime+0, 0
L__main14:
	BTFSS      STATUS+0, 0
	GOTO       L_main4
;LED_blink.c,12 :: 		portb.f0 = 0xff;
	BSF        PORTB+0, 0
;LED_blink.c,13 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;LED_blink.c,14 :: 		portb.f0 = 0x00;
	BCF        PORTB+0, 0
;LED_blink.c,15 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;LED_blink.c,11 :: 		for(i = 1; i <= onTime; i++){ // inside loop 500+500=1000ms, 1second
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;LED_blink.c,16 :: 		}
	GOTO       L_main3
L_main4:
;LED_blink.c,17 :: 		for(i = 1; i <= offTime; i++){
	MOVLW      1
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
L_main8:
	MOVLW      128
	XORWF      _offTime+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main15
	MOVF       _i+0, 0
	SUBWF      _offTime+0, 0
L__main15:
	BTFSS      STATUS+0, 0
	GOTO       L_main9
;LED_blink.c,19 :: 		portb.f0 = 0x00;
	BCF        PORTB+0, 0
;LED_blink.c,20 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
	NOP
;LED_blink.c,17 :: 		for(i = 1; i <= offTime; i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;LED_blink.c,21 :: 		}
	GOTO       L_main8
L_main9:
;LED_blink.c,22 :: 		onTime++;
	INCF       _onTime+0, 1
	BTFSC      STATUS+0, 2
	INCF       _onTime+1, 1
;LED_blink.c,23 :: 		}
	GOTO       L_main0
L_main1:
;LED_blink.c,24 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
