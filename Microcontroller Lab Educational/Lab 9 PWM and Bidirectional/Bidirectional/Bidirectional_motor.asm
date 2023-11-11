
_main:

;Bidirectional_motor.c,1 :: 		void main() {
;Bidirectional_motor.c,2 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;Bidirectional_motor.c,3 :: 		portb = 0x00;
	CLRF       PORTB+0
;Bidirectional_motor.c,4 :: 		while(1)
L_main0:
;Bidirectional_motor.c,6 :: 		if(portc.f0 == 0xff){
	BTFSS      PORTC+0, 0
	GOTO       L_main2
;Bidirectional_motor.c,7 :: 		delay_ms(80);
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
;Bidirectional_motor.c,8 :: 		if(portc.f0 == 0xff){
	BTFSS      PORTC+0, 0
	GOTO       L_main4
;Bidirectional_motor.c,9 :: 		portb.f2 = 0xff; // enable
	BSF        PORTB+0, 2
;Bidirectional_motor.c,10 :: 		portb.f0 = 0xff;
	BSF        PORTB+0, 0
;Bidirectional_motor.c,11 :: 		portb.f1 = 0x00;
	BCF        PORTB+0, 1
;Bidirectional_motor.c,12 :: 		}
L_main4:
;Bidirectional_motor.c,13 :: 		}
L_main2:
;Bidirectional_motor.c,14 :: 		if(portc.f1 == 0xff){
	BTFSS      PORTC+0, 1
	GOTO       L_main5
;Bidirectional_motor.c,15 :: 		delay_ms(80);
	MOVLW      208
	MOVWF      R12+0
	MOVLW      201
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;Bidirectional_motor.c,16 :: 		if(portc.f1 == 0xff){
	BTFSS      PORTC+0, 1
	GOTO       L_main7
;Bidirectional_motor.c,17 :: 		portb.f2 = 0x00;   // disable
	BCF        PORTB+0, 2
;Bidirectional_motor.c,18 :: 		}
L_main7:
;Bidirectional_motor.c,19 :: 		}
L_main5:
;Bidirectional_motor.c,20 :: 		if(portc.f2 == 0xff){
	BTFSS      PORTC+0, 2
	GOTO       L_main8
;Bidirectional_motor.c,21 :: 		delay_ms(80);
	MOVLW      208
	MOVWF      R12+0
	MOVLW      201
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
	NOP
;Bidirectional_motor.c,22 :: 		if(portc.f2 == 0xff){
	BTFSS      PORTC+0, 2
	GOTO       L_main10
;Bidirectional_motor.c,23 :: 		portb.f2 = 0xff; // enable
	BSF        PORTB+0, 2
;Bidirectional_motor.c,24 :: 		portb.f0 = 0x00;
	BCF        PORTB+0, 0
;Bidirectional_motor.c,25 :: 		portb.f1 = 0xff;
	BSF        PORTB+0, 1
;Bidirectional_motor.c,26 :: 		}
L_main10:
;Bidirectional_motor.c,27 :: 		}
L_main8:
;Bidirectional_motor.c,28 :: 		}
	GOTO       L_main0
;Bidirectional_motor.c,30 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
