
_main:

;Servo.c,5 :: 		void main() {
;Servo.c,6 :: 		TRISB = 0X00;
	CLRF       TRISB+0
;Servo.c,7 :: 		TRISC = 0XFF;
	MOVLW      255
	MOVWF      TRISC+0
;Servo.c,8 :: 		portb = 0x00;
	CLRF       PORTB+0
;Servo.c,9 :: 		rotateZero();
	CALL       _rotateZero+0
;Servo.c,10 :: 		while(1) {
L_main0:
;Servo.c,11 :: 		if(portc.f0 == 0xff) {
	BTFSS      PORTC+0, 0
	GOTO       L_main2
;Servo.c,12 :: 		rotateLeft90();
	CALL       _rotateLeft90+0
;Servo.c,13 :: 		}
L_main2:
;Servo.c,14 :: 		if(portc.f1 == 0xff) {
	BTFSS      PORTC+0, 1
	GOTO       L_main3
;Servo.c,15 :: 		rotateZero();
	CALL       _rotateZero+0
;Servo.c,16 :: 		}
L_main3:
;Servo.c,17 :: 		if(portc.f2 == 0xff) {
	BTFSS      PORTC+0, 2
	GOTO       L_main4
;Servo.c,18 :: 		rotateRight90();
	CALL       _rotateRight90+0
;Servo.c,19 :: 		}
L_main4:
;Servo.c,20 :: 		}
	GOTO       L_main0
;Servo.c,21 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_rotateLeft90:

;Servo.c,22 :: 		void rotateLeft90() {
;Servo.c,23 :: 		for(i=0;i<50;i++) {
	CLRF       _i+0
	CLRF       _i+1
L_rotateLeft905:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__rotateLeft9022
	MOVLW      50
	SUBWF      _i+0, 0
L__rotateLeft9022:
	BTFSC      STATUS+0, 0
	GOTO       L_rotateLeft906
;Servo.c,24 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;Servo.c,25 :: 		delay_us(800);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      18
	MOVWF      R13+0
L_rotateLeft908:
	DECFSZ     R13+0, 1
	GOTO       L_rotateLeft908
	DECFSZ     R12+0, 1
	GOTO       L_rotateLeft908
	NOP
;Servo.c,26 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;Servo.c,27 :: 		delay_us(19200);
	MOVLW      50
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_rotateLeft909:
	DECFSZ     R13+0, 1
	GOTO       L_rotateLeft909
	DECFSZ     R12+0, 1
	GOTO       L_rotateLeft909
	NOP
	NOP
;Servo.c,23 :: 		for(i=0;i<50;i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Servo.c,28 :: 		}
	GOTO       L_rotateLeft905
L_rotateLeft906:
;Servo.c,29 :: 		}
L_end_rotateLeft90:
	RETURN
; end of _rotateLeft90

_rotateZero:

;Servo.c,30 :: 		void rotateZero() {
;Servo.c,31 :: 		for(i=0;i<50;i++) {
	CLRF       _i+0
	CLRF       _i+1
L_rotateZero10:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__rotateZero24
	MOVLW      50
	SUBWF      _i+0, 0
L__rotateZero24:
	BTFSC      STATUS+0, 0
	GOTO       L_rotateZero11
;Servo.c,32 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;Servo.c,33 :: 		delay_us(1500);
	MOVLW      4
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_rotateZero13:
	DECFSZ     R13+0, 1
	GOTO       L_rotateZero13
	DECFSZ     R12+0, 1
	GOTO       L_rotateZero13
	NOP
;Servo.c,34 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;Servo.c,35 :: 		delay_us(18500);
	MOVLW      49
	MOVWF      R12+0
	MOVLW      11
	MOVWF      R13+0
L_rotateZero14:
	DECFSZ     R13+0, 1
	GOTO       L_rotateZero14
	DECFSZ     R12+0, 1
	GOTO       L_rotateZero14
	NOP
	NOP
;Servo.c,31 :: 		for(i=0;i<50;i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Servo.c,36 :: 		}
	GOTO       L_rotateZero10
L_rotateZero11:
;Servo.c,37 :: 		}
L_end_rotateZero:
	RETURN
; end of _rotateZero

_rotateRight90:

;Servo.c,38 :: 		void rotateRight90() {
;Servo.c,39 :: 		for(i=0;i<50;i++) {
	CLRF       _i+0
	CLRF       _i+1
L_rotateRight9015:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__rotateRight9026
	MOVLW      50
	SUBWF      _i+0, 0
L__rotateRight9026:
	BTFSC      STATUS+0, 0
	GOTO       L_rotateRight9016
;Servo.c,40 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;Servo.c,41 :: 		delay_us(2200);
	MOVLW      6
	MOVWF      R12+0
	MOVLW      181
	MOVWF      R13+0
L_rotateRight9018:
	DECFSZ     R13+0, 1
	GOTO       L_rotateRight9018
	DECFSZ     R12+0, 1
	GOTO       L_rotateRight9018
	NOP
	NOP
;Servo.c,42 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;Servo.c,43 :: 		delay_us(17800);
	MOVLW      47
	MOVWF      R12+0
	MOVLW      58
	MOVWF      R13+0
L_rotateRight9019:
	DECFSZ     R13+0, 1
	GOTO       L_rotateRight9019
	DECFSZ     R12+0, 1
	GOTO       L_rotateRight9019
	NOP
;Servo.c,39 :: 		for(i=0;i<50;i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Servo.c,44 :: 		}
	GOTO       L_rotateRight9015
L_rotateRight9016:
;Servo.c,45 :: 		}
L_end_rotateRight90:
	RETURN
; end of _rotateRight90
