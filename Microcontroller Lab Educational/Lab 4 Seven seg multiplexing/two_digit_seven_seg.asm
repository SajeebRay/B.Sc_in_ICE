
_main:

;two_digit_seven_seg.c,2 :: 		void main()
;two_digit_seven_seg.c,4 :: 		int mod = 0, res = 0, i = 0, k = 0, state = 1;
	CLRF       main_mod_L0+0
	CLRF       main_mod_L0+1
	CLRF       main_res_L0+0
	CLRF       main_res_L0+1
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
	CLRF       main_k_L0+0
	CLRF       main_k_L0+1
;two_digit_seven_seg.c,5 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;two_digit_seven_seg.c,6 :: 		portb = 0x00;
	CLRF       PORTB+0
;two_digit_seven_seg.c,7 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;two_digit_seven_seg.c,8 :: 		portc = 0x00;
	CLRF       PORTC+0
;two_digit_seven_seg.c,9 :: 		while(1)
L_main0:
;two_digit_seven_seg.c,11 :: 		for(i = 0; i <= 22; i++)
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main2:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVF       main_i_L0+0, 0
	SUBLW      22
L__main11:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;two_digit_seven_seg.c,13 :: 		res  = i/10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      main_res_L0+0
	MOVF       R0+1, 0
	MOVWF      main_res_L0+1
;two_digit_seven_seg.c,14 :: 		mod = i%10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_mod_L0+0
	MOVF       R0+1, 0
	MOVWF      main_mod_L0+1
;two_digit_seven_seg.c,15 :: 		for(k = 0; k < 50; k++)
	CLRF       main_k_L0+0
	CLRF       main_k_L0+1
L_main5:
	MOVLW      128
	XORWF      main_k_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      50
	SUBWF      main_k_L0+0, 0
L__main12:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;two_digit_seven_seg.c,17 :: 		portc.f0 = 0x00;   // active power for digit left
	BCF        PORTC+0, 0
;two_digit_seven_seg.c,18 :: 		portb = arraCC[res]; // provide data for two digit
	MOVF       main_res_L0+0, 0
	ADDLW      _arraCC+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;two_digit_seven_seg.c,19 :: 		delay_ms(10);
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
;two_digit_seven_seg.c,20 :: 		portc.f0 = 0xff;   // Deactive power for digit right
	BSF        PORTC+0, 0
;two_digit_seven_seg.c,22 :: 		portc.f1 = 0x00;     // active power for digit right
	BCF        PORTC+0, 1
;two_digit_seven_seg.c,23 :: 		portb = arraCC[mod];
	MOVF       main_mod_L0+0, 0
	ADDLW      _arraCC+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;two_digit_seven_seg.c,24 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
;two_digit_seven_seg.c,25 :: 		portc.f1 = 0xff;      // deactive power for digit left
	BSF        PORTC+0, 1
;two_digit_seven_seg.c,15 :: 		for(k = 0; k < 50; k++)
	INCF       main_k_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_k_L0+1, 1
;two_digit_seven_seg.c,26 :: 		}
	GOTO       L_main5
L_main6:
;two_digit_seven_seg.c,11 :: 		for(i = 0; i <= 22; i++)
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;two_digit_seven_seg.c,27 :: 		}
	GOTO       L_main2
L_main3:
;two_digit_seven_seg.c,28 :: 		}
	GOTO       L_main0
;two_digit_seven_seg.c,29 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
