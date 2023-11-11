
_main:

;LabP_showing_specific_combi_by_pass.c,2 :: 		void main()
;LabP_showing_specific_combi_by_pass.c,4 :: 		int k = 0,  bt_zero = 0, bt_one = 0, bt_two = 0, bt_three  = 0;
	CLRF       main_bt_zero_L0+0
	CLRF       main_bt_zero_L0+1
	CLRF       main_bt_one_L0+0
	CLRF       main_bt_one_L0+1
	CLRF       main_bt_two_L0+0
	CLRF       main_bt_two_L0+1
	CLRF       main_bt_three_L0+0
	CLRF       main_bt_three_L0+1
;LabP_showing_specific_combi_by_pass.c,5 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;LabP_showing_specific_combi_by_pass.c,6 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;LabP_showing_specific_combi_by_pass.c,7 :: 		TRISD = 0xff;
	MOVLW      255
	MOVWF      TRISD+0
;LabP_showing_specific_combi_by_pass.c,8 :: 		portb = 0x00;
	CLRF       PORTB+0
;LabP_showing_specific_combi_by_pass.c,9 :: 		portc = 0x00;
	CLRF       PORTC+0
;LabP_showing_specific_combi_by_pass.c,10 :: 		while(1)
L_main0:
;LabP_showing_specific_combi_by_pass.c,12 :: 		if(portd.f1 == 0x00)  // click initialize
	BTFSC      PORTD+0, 1
	GOTO       L_main2
;LabP_showing_specific_combi_by_pass.c,14 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;LabP_showing_specific_combi_by_pass.c,15 :: 		if(portd.f1 == 0x00)  // click stability check
	BTFSC      PORTD+0, 1
	GOTO       L_main4
;LabP_showing_specific_combi_by_pass.c,17 :: 		bt_zero++;        // digit increment
	INCF       main_bt_zero_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_bt_zero_L0+1, 1
;LabP_showing_specific_combi_by_pass.c,18 :: 		if(bt_zero == 10) // after 9, next is 0
	MOVLW      0
	XORWF      main_bt_zero_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main33
	MOVLW      10
	XORWF      main_bt_zero_L0+0, 0
L__main33:
	BTFSS      STATUS+0, 2
	GOTO       L_main5
;LabP_showing_specific_combi_by_pass.c,20 :: 		bt_zero = 0;
	CLRF       main_bt_zero_L0+0
	CLRF       main_bt_zero_L0+1
;LabP_showing_specific_combi_by_pass.c,21 :: 		}
L_main5:
;LabP_showing_specific_combi_by_pass.c,22 :: 		}
L_main4:
;LabP_showing_specific_combi_by_pass.c,23 :: 		}
L_main2:
;LabP_showing_specific_combi_by_pass.c,24 :: 		if(portd.f2 == 0x00)
	BTFSC      PORTD+0, 2
	GOTO       L_main6
;LabP_showing_specific_combi_by_pass.c,26 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
;LabP_showing_specific_combi_by_pass.c,27 :: 		if(portd.f2 == 0x00)
	BTFSC      PORTD+0, 2
	GOTO       L_main8
;LabP_showing_specific_combi_by_pass.c,29 :: 		bt_one++;
	INCF       main_bt_one_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_bt_one_L0+1, 1
;LabP_showing_specific_combi_by_pass.c,30 :: 		if(bt_one == 10)
	MOVLW      0
	XORWF      main_bt_one_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main34
	MOVLW      10
	XORWF      main_bt_one_L0+0, 0
L__main34:
	BTFSS      STATUS+0, 2
	GOTO       L_main9
;LabP_showing_specific_combi_by_pass.c,32 :: 		bt_one = 0;
	CLRF       main_bt_one_L0+0
	CLRF       main_bt_one_L0+1
;LabP_showing_specific_combi_by_pass.c,33 :: 		}
L_main9:
;LabP_showing_specific_combi_by_pass.c,34 :: 		}
L_main8:
;LabP_showing_specific_combi_by_pass.c,35 :: 		}
L_main6:
;LabP_showing_specific_combi_by_pass.c,36 :: 		if(portd.f3 == 0x00)
	BTFSC      PORTD+0, 3
	GOTO       L_main10
;LabP_showing_specific_combi_by_pass.c,38 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
;LabP_showing_specific_combi_by_pass.c,39 :: 		if(portd.f3 == 0x00)
	BTFSC      PORTD+0, 3
	GOTO       L_main12
;LabP_showing_specific_combi_by_pass.c,41 :: 		bt_two++;
	INCF       main_bt_two_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_bt_two_L0+1, 1
;LabP_showing_specific_combi_by_pass.c,42 :: 		if(bt_two == 10)
	MOVLW      0
	XORWF      main_bt_two_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main35
	MOVLW      10
	XORWF      main_bt_two_L0+0, 0
L__main35:
	BTFSS      STATUS+0, 2
	GOTO       L_main13
;LabP_showing_specific_combi_by_pass.c,44 :: 		bt_two = 0;
	CLRF       main_bt_two_L0+0
	CLRF       main_bt_two_L0+1
;LabP_showing_specific_combi_by_pass.c,45 :: 		}
L_main13:
;LabP_showing_specific_combi_by_pass.c,46 :: 		}
L_main12:
;LabP_showing_specific_combi_by_pass.c,47 :: 		}
L_main10:
;LabP_showing_specific_combi_by_pass.c,48 :: 		if(portd.f4 == 0x00)
	BTFSC      PORTD+0, 4
	GOTO       L_main14
;LabP_showing_specific_combi_by_pass.c,50 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	DECFSZ     R11+0, 1
	GOTO       L_main15
	NOP
;LabP_showing_specific_combi_by_pass.c,51 :: 		if(portd.f4 == 0x00)
	BTFSC      PORTD+0, 4
	GOTO       L_main16
;LabP_showing_specific_combi_by_pass.c,53 :: 		bt_three++;
	INCF       main_bt_three_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_bt_three_L0+1, 1
;LabP_showing_specific_combi_by_pass.c,54 :: 		if(bt_three == 10)
	MOVLW      0
	XORWF      main_bt_three_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main36
	MOVLW      10
	XORWF      main_bt_three_L0+0, 0
L__main36:
	BTFSS      STATUS+0, 2
	GOTO       L_main17
;LabP_showing_specific_combi_by_pass.c,56 :: 		bt_three = 0;
	CLRF       main_bt_three_L0+0
	CLRF       main_bt_three_L0+1
;LabP_showing_specific_combi_by_pass.c,57 :: 		}
L_main17:
;LabP_showing_specific_combi_by_pass.c,58 :: 		}
L_main16:
;LabP_showing_specific_combi_by_pass.c,59 :: 		}
L_main14:
;LabP_showing_specific_combi_by_pass.c,61 :: 		if(bt_zero == 1 && bt_one == 3 && bt_two == 0 && bt_three == 2) // checking password
	MOVLW      0
	XORWF      main_bt_zero_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main37
	MOVLW      1
	XORWF      main_bt_zero_L0+0, 0
L__main37:
	BTFSS      STATUS+0, 2
	GOTO       L_main20
	MOVLW      0
	XORWF      main_bt_one_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main38
	MOVLW      3
	XORWF      main_bt_one_L0+0, 0
L__main38:
	BTFSS      STATUS+0, 2
	GOTO       L_main20
	MOVLW      0
	XORWF      main_bt_two_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main39
	MOVLW      0
	XORWF      main_bt_two_L0+0, 0
L__main39:
	BTFSS      STATUS+0, 2
	GOTO       L_main20
	MOVLW      0
	XORWF      main_bt_three_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main40
	MOVLW      2
	XORWF      main_bt_three_L0+0, 0
L__main40:
	BTFSS      STATUS+0, 2
	GOTO       L_main20
L__main31:
;LabP_showing_specific_combi_by_pass.c,63 :: 		portc.f4 = 0xff;
	BSF        PORTC+0, 4
;LabP_showing_specific_combi_by_pass.c,64 :: 		portc.f5 = 0x00;
	BCF        PORTC+0, 5
;LabP_showing_specific_combi_by_pass.c,65 :: 		portc.f6 = 0xff;
	BSF        PORTC+0, 6
;LabP_showing_specific_combi_by_pass.c,66 :: 		portc.f7 = 0xff;
	BSF        PORTC+0, 7
;LabP_showing_specific_combi_by_pass.c,67 :: 		}
	GOTO       L_main21
L_main20:
;LabP_showing_specific_combi_by_pass.c,69 :: 		else if(bt_zero == 8 && bt_one == 9 && bt_two == 2 && bt_three == 0)
	MOVLW      0
	XORWF      main_bt_zero_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main41
	MOVLW      8
	XORWF      main_bt_zero_L0+0, 0
L__main41:
	BTFSS      STATUS+0, 2
	GOTO       L_main24
	MOVLW      0
	XORWF      main_bt_one_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main42
	MOVLW      9
	XORWF      main_bt_one_L0+0, 0
L__main42:
	BTFSS      STATUS+0, 2
	GOTO       L_main24
	MOVLW      0
	XORWF      main_bt_two_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main43
	MOVLW      2
	XORWF      main_bt_two_L0+0, 0
L__main43:
	BTFSS      STATUS+0, 2
	GOTO       L_main24
	MOVLW      0
	XORWF      main_bt_three_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main44
	MOVLW      0
	XORWF      main_bt_three_L0+0, 0
L__main44:
	BTFSS      STATUS+0, 2
	GOTO       L_main24
L__main30:
;LabP_showing_specific_combi_by_pass.c,71 :: 		portc.f4 = 0xff;
	BSF        PORTC+0, 4
;LabP_showing_specific_combi_by_pass.c,72 :: 		portc.f5 = 0xff;
	BSF        PORTC+0, 5
;LabP_showing_specific_combi_by_pass.c,73 :: 		portc.f6 = 0x00;
	BCF        PORTC+0, 6
;LabP_showing_specific_combi_by_pass.c,74 :: 		portc.f7 = 0x00;
	BCF        PORTC+0, 7
;LabP_showing_specific_combi_by_pass.c,75 :: 		}
	GOTO       L_main25
L_main24:
;LabP_showing_specific_combi_by_pass.c,78 :: 		portc.f4 = 0x00;
	BCF        PORTC+0, 4
;LabP_showing_specific_combi_by_pass.c,79 :: 		portc.f5 = 0x00;
	BCF        PORTC+0, 5
;LabP_showing_specific_combi_by_pass.c,80 :: 		portc.f6 = 0x00;
	BCF        PORTC+0, 6
;LabP_showing_specific_combi_by_pass.c,81 :: 		portc.f7 = 0x00;
	BCF        PORTC+0, 7
;LabP_showing_specific_combi_by_pass.c,82 :: 		}
L_main25:
L_main21:
;LabP_showing_specific_combi_by_pass.c,84 :: 		portc.f0 = 0x00;   // active power for digit left
	BCF        PORTC+0, 0
;LabP_showing_specific_combi_by_pass.c,85 :: 		portb = arraCC[bt_zero]; // provide data for left digit
	MOVF       main_bt_zero_L0+0, 0
	ADDLW      _arraCC+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;LabP_showing_specific_combi_by_pass.c,86 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main26:
	DECFSZ     R13+0, 1
	GOTO       L_main26
	DECFSZ     R12+0, 1
	GOTO       L_main26
	NOP
;LabP_showing_specific_combi_by_pass.c,87 :: 		portc.f0 = 0xff;   // Deactive power for digit left
	BSF        PORTC+0, 0
;LabP_showing_specific_combi_by_pass.c,89 :: 		portc.f1 = 0x00;     // active power for second digit
	BCF        PORTC+0, 1
;LabP_showing_specific_combi_by_pass.c,90 :: 		portb = arraCC[bt_one];    // provide data for second digit
	MOVF       main_bt_one_L0+0, 0
	ADDLW      _arraCC+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;LabP_showing_specific_combi_by_pass.c,91 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main27:
	DECFSZ     R13+0, 1
	GOTO       L_main27
	DECFSZ     R12+0, 1
	GOTO       L_main27
	NOP
;LabP_showing_specific_combi_by_pass.c,92 :: 		portc.f1 = 0xff;      // deactive power for second digit
	BSF        PORTC+0, 1
;LabP_showing_specific_combi_by_pass.c,94 :: 		portc.f2 = 0x00;   // active power for third digit
	BCF        PORTC+0, 2
;LabP_showing_specific_combi_by_pass.c,95 :: 		portb = arraCC[bt_two]; // provide data for third digit
	MOVF       main_bt_two_L0+0, 0
	ADDLW      _arraCC+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;LabP_showing_specific_combi_by_pass.c,96 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main28:
	DECFSZ     R13+0, 1
	GOTO       L_main28
	DECFSZ     R12+0, 1
	GOTO       L_main28
	NOP
;LabP_showing_specific_combi_by_pass.c,97 :: 		portc.f2 = 0xff;   // Deactive power for third digit
	BSF        PORTC+0, 2
;LabP_showing_specific_combi_by_pass.c,99 :: 		portc.f3 = 0x00;   // active power for digit right
	BCF        PORTC+0, 3
;LabP_showing_specific_combi_by_pass.c,100 :: 		portb = arraCC[bt_three]; // provide data for right digit
	MOVF       main_bt_three_L0+0, 0
	ADDLW      _arraCC+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;LabP_showing_specific_combi_by_pass.c,101 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main29:
	DECFSZ     R13+0, 1
	GOTO       L_main29
	DECFSZ     R12+0, 1
	GOTO       L_main29
	NOP
;LabP_showing_specific_combi_by_pass.c,102 :: 		portc.f3 = 0xff;   // Deactive power for digit right
	BSF        PORTC+0, 3
;LabP_showing_specific_combi_by_pass.c,103 :: 		}
	GOTO       L_main0
;LabP_showing_specific_combi_by_pass.c,104 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
