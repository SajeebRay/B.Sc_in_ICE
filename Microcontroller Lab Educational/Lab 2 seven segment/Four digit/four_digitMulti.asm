
_main:

;four_digitMulti.c,3 :: 		void main() {
;four_digitMulti.c,4 :: 		TRISB = TRISC = 0x00;
	CLRF       TRISC+0
	MOVF       TRISC+0, 0
	MOVWF      TRISB+0
;four_digitMulti.c,5 :: 		portb = portc = 0x00;
	CLRF       PORTC+0
	MOVF       PORTC+0, 0
	MOVWF      PORTB+0
;four_digitMulti.c,6 :: 		TRISD = 0xff;
	MOVLW      255
	MOVWF      TRISD+0
;four_digitMulti.c,7 :: 		while(1){
L_main0:
;four_digitMulti.c,8 :: 		if(portd.f0 == 0xff){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;four_digitMulti.c,9 :: 		delay_ms(80);
	MOVLW      208
	MOVWF      R12+0
	MOVLW      201
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;four_digitMulti.c,10 :: 		if(portd.f0 == 0xff){
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;four_digitMulti.c,11 :: 		digit1++;
	INCF       _digit1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _digit1+1, 1
;four_digitMulti.c,12 :: 		if(digit1 == 10)
	MOVLW      0
	XORWF      _digit1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVLW      10
	XORWF      _digit1+0, 0
L__main23:
	BTFSS      STATUS+0, 2
	GOTO       L_main5
;four_digitMulti.c,13 :: 		digit1 = 0;
	CLRF       _digit1+0
	CLRF       _digit1+1
L_main5:
;four_digitMulti.c,14 :: 		}
L_main4:
;four_digitMulti.c,15 :: 		}
L_main2:
;four_digitMulti.c,16 :: 		if(portd.f1 == 0xff){
	BTFSS      PORTD+0, 1
	GOTO       L_main6
;four_digitMulti.c,17 :: 		delay_ms(80);
	MOVLW      208
	MOVWF      R12+0
	MOVLW      201
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
	NOP
;four_digitMulti.c,18 :: 		if(portd.f1 == 0xff){
	BTFSS      PORTD+0, 1
	GOTO       L_main8
;four_digitMulti.c,19 :: 		digit2++;
	INCF       _digit2+0, 1
	BTFSC      STATUS+0, 2
	INCF       _digit2+1, 1
;four_digitMulti.c,20 :: 		if(digit2 == 10)
	MOVLW      0
	XORWF      _digit2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main24
	MOVLW      10
	XORWF      _digit2+0, 0
L__main24:
	BTFSS      STATUS+0, 2
	GOTO       L_main9
;four_digitMulti.c,21 :: 		digit2 = 0;
	CLRF       _digit2+0
	CLRF       _digit2+1
L_main9:
;four_digitMulti.c,22 :: 		}
L_main8:
;four_digitMulti.c,23 :: 		}
L_main6:
;four_digitMulti.c,24 :: 		if(portd.f2 == 0xff){
	BTFSS      PORTD+0, 2
	GOTO       L_main10
;four_digitMulti.c,25 :: 		delay_ms(80);
	MOVLW      208
	MOVWF      R12+0
	MOVLW      201
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
	NOP
;four_digitMulti.c,26 :: 		if(portd.f2 == 0xff){
	BTFSS      PORTD+0, 2
	GOTO       L_main12
;four_digitMulti.c,27 :: 		digit3++;
	INCF       _digit3+0, 1
	BTFSC      STATUS+0, 2
	INCF       _digit3+1, 1
;four_digitMulti.c,28 :: 		if(digit3 == 10)
	MOVLW      0
	XORWF      _digit3+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main25
	MOVLW      10
	XORWF      _digit3+0, 0
L__main25:
	BTFSS      STATUS+0, 2
	GOTO       L_main13
;four_digitMulti.c,29 :: 		digit3 = 0;
	CLRF       _digit3+0
	CLRF       _digit3+1
L_main13:
;four_digitMulti.c,30 :: 		}
L_main12:
;four_digitMulti.c,31 :: 		}
L_main10:
;four_digitMulti.c,32 :: 		if(portd.f3 == 0xff){
	BTFSS      PORTD+0, 3
	GOTO       L_main14
;four_digitMulti.c,33 :: 		delay_ms(80);
	MOVLW      208
	MOVWF      R12+0
	MOVLW      201
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	NOP
	NOP
;four_digitMulti.c,34 :: 		if(portd.f3 == 0xff){
	BTFSS      PORTD+0, 3
	GOTO       L_main16
;four_digitMulti.c,35 :: 		digit4++;
	INCF       _digit4+0, 1
	BTFSC      STATUS+0, 2
	INCF       _digit4+1, 1
;four_digitMulti.c,36 :: 		if(digit4 == 10)
	MOVLW      0
	XORWF      _digit4+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main26
	MOVLW      10
	XORWF      _digit4+0, 0
L__main26:
	BTFSS      STATUS+0, 2
	GOTO       L_main17
;four_digitMulti.c,37 :: 		digit4 = 0;
	CLRF       _digit4+0
	CLRF       _digit4+1
L_main17:
;four_digitMulti.c,38 :: 		}
L_main16:
;four_digitMulti.c,39 :: 		}
L_main14:
;four_digitMulti.c,41 :: 		portc.f0 = 0xff;
	BSF        PORTC+0, 0
;four_digitMulti.c,42 :: 		portb = arraCA[digit1];
	MOVF       _digit1+0, 0
	ADDLW      _arraCA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;four_digitMulti.c,43 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	NOP
	NOP
;four_digitMulti.c,44 :: 		portc.f0 = 0x00;
	BCF        PORTC+0, 0
;four_digitMulti.c,46 :: 		portc.f1 = 0xff;
	BSF        PORTC+0, 1
;four_digitMulti.c,47 :: 		portb = arraCA[digit2];
	MOVF       _digit2+0, 0
	ADDLW      _arraCA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;four_digitMulti.c,48 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	NOP
	NOP
;four_digitMulti.c,49 :: 		portc.f1 = 0x00;
	BCF        PORTC+0, 1
;four_digitMulti.c,51 :: 		portc.f2 = 0xff;
	BSF        PORTC+0, 2
;four_digitMulti.c,52 :: 		portb = arraCA[digit3];
	MOVF       _digit3+0, 0
	ADDLW      _arraCA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;four_digitMulti.c,53 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main20:
	DECFSZ     R13+0, 1
	GOTO       L_main20
	DECFSZ     R12+0, 1
	GOTO       L_main20
	NOP
	NOP
;four_digitMulti.c,54 :: 		portc.f2 = 0x00;
	BCF        PORTC+0, 2
;four_digitMulti.c,56 :: 		portc.f3 = 0xff;
	BSF        PORTC+0, 3
;four_digitMulti.c,57 :: 		portb = arraCA[digit4];
	MOVF       _digit4+0, 0
	ADDLW      _arraCA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;four_digitMulti.c,58 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main21:
	DECFSZ     R13+0, 1
	GOTO       L_main21
	DECFSZ     R12+0, 1
	GOTO       L_main21
	NOP
	NOP
;four_digitMulti.c,59 :: 		portc.f3 = 0x00;
	BCF        PORTC+0, 3
;four_digitMulti.c,61 :: 		}
	GOTO       L_main0
;four_digitMulti.c,62 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
