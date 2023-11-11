
_main:

;Stepper_motor.c,2 :: 		void main() {
;Stepper_motor.c,3 :: 		TRISD = 0X00;
	CLRF       TRISD+0
;Stepper_motor.c,4 :: 		portd = 0x00;
	CLRF       PORTD+0
;Stepper_motor.c,5 :: 		while(1)
L_main0:
;Stepper_motor.c,8 :: 		for(i=0; i < 100; i++){
	CLRF       _i+0
	CLRF       _i+1
L_main2:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main19
	MOVLW      100
	SUBWF      _i+0, 0
L__main19:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;Stepper_motor.c,9 :: 		portd = 0b00001100;
	MOVLW      12
	MOVWF      PORTD+0
;Stepper_motor.c,10 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
;Stepper_motor.c,11 :: 		portd = 0b00000110;
	MOVLW      6
	MOVWF      PORTD+0
;Stepper_motor.c,12 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
;Stepper_motor.c,13 :: 		portd = 0b00000011;
	MOVLW      3
	MOVWF      PORTD+0
;Stepper_motor.c,14 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
;Stepper_motor.c,15 :: 		portd = 0b00001001;
	MOVLW      9
	MOVWF      PORTD+0
;Stepper_motor.c,16 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
;Stepper_motor.c,8 :: 		for(i=0; i < 100; i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Stepper_motor.c,17 :: 		}
	GOTO       L_main2
L_main3:
;Stepper_motor.c,18 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;Stepper_motor.c,20 :: 		for(i=0; i < 100; i++){
	CLRF       _i+0
	CLRF       _i+1
L_main10:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main20
	MOVLW      100
	SUBWF      _i+0, 0
L__main20:
	BTFSC      STATUS+0, 0
	GOTO       L_main11
;Stepper_motor.c,21 :: 		portd = 0b00000011;
	MOVLW      3
	MOVWF      PORTD+0
;Stepper_motor.c,22 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	NOP
;Stepper_motor.c,23 :: 		portd = 0b00000110;
	MOVLW      6
	MOVWF      PORTD+0
;Stepper_motor.c,24 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	NOP
;Stepper_motor.c,25 :: 		portd = 0b00001100;
	MOVLW      12
	MOVWF      PORTD+0
;Stepper_motor.c,26 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	NOP
;Stepper_motor.c,27 :: 		portd = 0b00001001;
	MOVLW      9
	MOVWF      PORTD+0
;Stepper_motor.c,28 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	NOP
;Stepper_motor.c,20 :: 		for(i=0; i < 100; i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Stepper_motor.c,29 :: 		}
	GOTO       L_main10
L_main11:
;Stepper_motor.c,30 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	DECFSZ     R11+0, 1
	GOTO       L_main17
	NOP
	NOP
;Stepper_motor.c,31 :: 		}
	GOTO       L_main0
;Stepper_motor.c,32 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
