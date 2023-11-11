
_main:

;Seven_seg_button.c,2 :: 		void main()
;Seven_seg_button.c,4 :: 		int i = 0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;Seven_seg_button.c,5 :: 		TRISD = 0xff; //set all pincs of port d as input
	MOVLW      255
	MOVWF      TRISD+0
;Seven_seg_button.c,6 :: 		TRISB = 0x00; // set all pins of port b as ouput
	CLRF       TRISB+0
;Seven_seg_button.c,7 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;Seven_seg_button.c,8 :: 		portc = 0x00;
	CLRF       PORTC+0
;Seven_seg_button.c,9 :: 		portb = 0x7F;  // initialize all pin as off state
	MOVLW      127
	MOVWF      PORTB+0
;Seven_seg_button.c,10 :: 		while(1)
L_main0:
;Seven_seg_button.c,11 :: 		{        portc.f0 = 0x00;
	BCF        PORTC+0, 0
;Seven_seg_button.c,12 :: 		portc.f1 = 0x00;
	BCF        PORTC+0, 1
;Seven_seg_button.c,13 :: 		if(portd.f0 == 0x00)
	BTFSC      PORTD+0, 0
	GOTO       L_main2
;Seven_seg_button.c,15 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;Seven_seg_button.c,16 :: 		if(portd.f0 == 0x00)
	BTFSC      PORTD+0, 0
	GOTO       L_main4
;Seven_seg_button.c,18 :: 		if(i < 9)
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVLW      9
	SUBWF      main_i_L0+0, 0
L__main11:
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;Seven_seg_button.c,19 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
L_main5:
;Seven_seg_button.c,20 :: 		}
L_main4:
;Seven_seg_button.c,21 :: 		}
L_main2:
;Seven_seg_button.c,22 :: 		if(portd.f1 == 0x00)
	BTFSC      PORTD+0, 1
	GOTO       L_main6
;Seven_seg_button.c,24 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
;Seven_seg_button.c,25 :: 		if(portd.f1 == 0x00)
	BTFSC      PORTD+0, 1
	GOTO       L_main8
;Seven_seg_button.c,27 :: 		if(i > 0)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVF       main_i_L0+0, 0
	SUBLW      0
L__main12:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;Seven_seg_button.c,28 :: 		i--;
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
L_main9:
;Seven_seg_button.c,29 :: 		}
L_main8:
;Seven_seg_button.c,30 :: 		}
L_main6:
;Seven_seg_button.c,31 :: 		portb = arraCC[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _arraCC+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Seven_seg_button.c,32 :: 		}
	GOTO       L_main0
;Seven_seg_button.c,33 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
