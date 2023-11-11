
_main:

;Dot_matrix_display.c,1 :: 		void main() {
;Dot_matrix_display.c,2 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;Dot_matrix_display.c,3 :: 		TRISD = 0x00;
	CLRF       TRISD+0
;Dot_matrix_display.c,4 :: 		while(1)
L_main0:
;Dot_matrix_display.c,6 :: 		PORTD = 0x80;
	MOVLW      128
	MOVWF      PORTD+0
;Dot_matrix_display.c,7 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;Dot_matrix_display.c,8 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
	NOP
;Dot_matrix_display.c,10 :: 		PORTD = 0x40;
	MOVLW      64
	MOVWF      PORTD+0
;Dot_matrix_display.c,11 :: 		PORTC = 0xff;
	MOVLW      255
	MOVWF      PORTC+0
;Dot_matrix_display.c,12 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;Dot_matrix_display.c,14 :: 		PORTD = 0x20;
	MOVLW      32
	MOVWF      PORTD+0
;Dot_matrix_display.c,15 :: 		PORTC = 0xff;
	MOVLW      255
	MOVWF      PORTC+0
;Dot_matrix_display.c,16 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
	NOP
;Dot_matrix_display.c,18 :: 		PORTD = 0x10;
	MOVLW      16
	MOVWF      PORTD+0
;Dot_matrix_display.c,19 :: 		PORTC = 0x18;
	MOVLW      24
	MOVWF      PORTC+0
;Dot_matrix_display.c,20 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
	NOP
;Dot_matrix_display.c,22 :: 		PORTD = 0x08;
	MOVLW      8
	MOVWF      PORTD+0
;Dot_matrix_display.c,23 :: 		PORTC = 0x18;
	MOVLW      24
	MOVWF      PORTC+0
;Dot_matrix_display.c,24 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;Dot_matrix_display.c,26 :: 		PORTD = 0x04;
	MOVLW      4
	MOVWF      PORTD+0
;Dot_matrix_display.c,27 :: 		PORTC = 0xff;
	MOVLW      255
	MOVWF      PORTC+0
;Dot_matrix_display.c,28 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
	NOP
;Dot_matrix_display.c,30 :: 		PORTD = 0x02;
	MOVLW      2
	MOVWF      PORTD+0
;Dot_matrix_display.c,31 :: 		PORTC = 0xff;
	MOVLW      255
	MOVWF      PORTC+0
;Dot_matrix_display.c,32 :: 		delay_ms(5);
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
;Dot_matrix_display.c,34 :: 		PORTD = 0x01;
	MOVLW      1
	MOVWF      PORTD+0
;Dot_matrix_display.c,35 :: 		PORTC = 0x00;
	CLRF       PORTC+0
;Dot_matrix_display.c,36 :: 		delay_ms(5);
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
;Dot_matrix_display.c,37 :: 		}
	GOTO       L_main0
;Dot_matrix_display.c,38 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
