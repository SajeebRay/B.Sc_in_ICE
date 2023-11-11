
_main:

;four_digitMulti_Loop.c,3 :: 		void main() {
;four_digitMulti_Loop.c,4 :: 		TRISB = TRISC = 0x00;
	CLRF       TRISC+0
	MOVF       TRISC+0, 0
	MOVWF      TRISB+0
;four_digitMulti_Loop.c,5 :: 		portb = portc = 0x00;
	CLRF       PORTC+0
	MOVF       PORTC+0, 0
	MOVWF      PORTB+0
;four_digitMulti_Loop.c,6 :: 		while(1){
L_main0:
;four_digitMulti_Loop.c,7 :: 		for(number = 2123; number < 2134; number++){
	MOVLW      75
	MOVWF      _number+0
	MOVLW      8
	MOVWF      _number+1
L_main2:
	MOVLW      128
	XORWF      _number+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      8
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVLW      86
	SUBWF      _number+0, 0
L__main13:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;four_digitMulti_Loop.c,8 :: 		digit4 = number%10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _number+0, 0
	MOVWF      R0+0
	MOVF       _number+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _digit4+0
	MOVF       R0+1, 0
	MOVWF      _digit4+1
;four_digitMulti_Loop.c,9 :: 		digit3 = (number/10)%10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _number+0, 0
	MOVWF      R0+0
	MOVF       _number+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _digit3+0
	MOVF       R0+1, 0
	MOVWF      _digit3+1
;four_digitMulti_Loop.c,10 :: 		digit2 = (number/100)%10;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _number+0, 0
	MOVWF      R0+0
	MOVF       _number+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _digit2+0
	MOVF       R0+1, 0
	MOVWF      _digit2+1
;four_digitMulti_Loop.c,11 :: 		digit1 = (number/1000)%10;
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       _number+0, 0
	MOVWF      R0+0
	MOVF       _number+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _digit1+0
	MOVF       R0+1, 0
	MOVWF      _digit1+1
;four_digitMulti_Loop.c,12 :: 		for(delay = 0; delay < 50; delay++){ // this delay loop, display same number 50 times
	CLRF       _delay+0
	CLRF       _delay+1
L_main5:
	MOVLW      128
	XORWF      _delay+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main14
	MOVLW      50
	SUBWF      _delay+0, 0
L__main14:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;four_digitMulti_Loop.c,14 :: 		portc.f0 = 0xff;
	BSF        PORTC+0, 0
;four_digitMulti_Loop.c,15 :: 		portb = arraCA[digit1];
	MOVF       _digit1+0, 0
	ADDLW      _arraCA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;four_digitMulti_Loop.c,16 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
	NOP
;four_digitMulti_Loop.c,17 :: 		portc.f0 = 0x00;
	BCF        PORTC+0, 0
;four_digitMulti_Loop.c,19 :: 		portc.f1 = 0xff;
	BSF        PORTC+0, 1
;four_digitMulti_Loop.c,20 :: 		portb = arraCA[digit2];
	MOVF       _digit2+0, 0
	ADDLW      _arraCA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;four_digitMulti_Loop.c,21 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
	NOP
;four_digitMulti_Loop.c,22 :: 		portc.f1 = 0x00;
	BCF        PORTC+0, 1
;four_digitMulti_Loop.c,24 :: 		portc.f2 = 0xff;
	BSF        PORTC+0, 2
;four_digitMulti_Loop.c,25 :: 		portb = arraCA[digit3];
	MOVF       _digit3+0, 0
	ADDLW      _arraCA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;four_digitMulti_Loop.c,26 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	NOP
	NOP
;four_digitMulti_Loop.c,27 :: 		portc.f2 = 0x00;
	BCF        PORTC+0, 2
;four_digitMulti_Loop.c,29 :: 		portc.f3 = 0xff;
	BSF        PORTC+0, 3
;four_digitMulti_Loop.c,30 :: 		portb = arraCA[digit4];
	MOVF       _digit4+0, 0
	ADDLW      _arraCA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;four_digitMulti_Loop.c,31 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
	NOP
;four_digitMulti_Loop.c,32 :: 		portc.f3 = 0x00;
	BCF        PORTC+0, 3
;four_digitMulti_Loop.c,12 :: 		for(delay = 0; delay < 50; delay++){ // this delay loop, display same number 50 times
	INCF       _delay+0, 1
	BTFSC      STATUS+0, 2
	INCF       _delay+1, 1
;four_digitMulti_Loop.c,33 :: 		}
	GOTO       L_main5
L_main6:
;four_digitMulti_Loop.c,7 :: 		for(number = 2123; number < 2134; number++){
	INCF       _number+0, 1
	BTFSC      STATUS+0, 2
	INCF       _number+1, 1
;four_digitMulti_Loop.c,35 :: 		}
	GOTO       L_main2
L_main3:
;four_digitMulti_Loop.c,37 :: 		}
	GOTO       L_main0
;four_digitMulti_Loop.c,38 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
