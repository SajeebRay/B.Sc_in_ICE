
_main:

;LCD.c,29 :: 		void main() {
;LCD.c,30 :: 		TRISB = 0x00; // Set PORTB as output
	CLRF       TRISB+0
;LCD.c,31 :: 		TRISD = 0x00; // Set PORTD as output for stepper motor control
	CLRF       TRISD+0
;LCD.c,33 :: 		lcd_init();
	CALL       _Lcd_Init+0
;LCD.c,34 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;LCD.c,35 :: 		lcd_cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;LCD.c,37 :: 		while(1) {
L_main0:
;LCD.c,38 :: 		lcd_out(1, 1,"Step: ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_LCD+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;LCD.c,39 :: 		lcd_out(2, 2,"Code by Sajeeb");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_LCD+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;LCD.c,44 :: 		for(i = 0; i < 200; i++) {
	CLRF       _i+0
	CLRF       _i+1
L_main2:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVLW      200
	SUBWF      _i+0, 0
L__main11:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;LCD.c,45 :: 		stepping_angle += 30;
	MOVLW      30
	ADDWF      _stepping_angle+0, 0
	MOVWF      R0+0
	MOVF       _stepping_angle+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _stepping_angle+0
	MOVF       R0+1, 0
	MOVWF      _stepping_angle+1
;LCD.c,46 :: 		IntToStr(stepping_angle, display);
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _display+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;LCD.c,47 :: 		lcd_out(1, 5, display);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _display+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;LCD.c,48 :: 		portd = 0b00001100;
	MOVLW      12
	MOVWF      PORTD+0
;LCD.c,49 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;LCD.c,51 :: 		stepping_angle += 30;
	MOVLW      30
	ADDWF      _stepping_angle+0, 0
	MOVWF      R0+0
	MOVF       _stepping_angle+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _stepping_angle+0
	MOVF       R0+1, 0
	MOVWF      _stepping_angle+1
;LCD.c,52 :: 		IntToStr(stepping_angle, display);
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _display+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;LCD.c,53 :: 		lcd_out(1, 5, display);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _display+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;LCD.c,54 :: 		portd = 0b00000110;
	MOVLW      6
	MOVWF      PORTD+0
;LCD.c,55 :: 		delay_ms(500);
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
;LCD.c,57 :: 		stepping_angle += 30;
	MOVLW      30
	ADDWF      _stepping_angle+0, 0
	MOVWF      R0+0
	MOVF       _stepping_angle+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _stepping_angle+0
	MOVF       R0+1, 0
	MOVWF      _stepping_angle+1
;LCD.c,58 :: 		IntToStr(stepping_angle, display);
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _display+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;LCD.c,59 :: 		lcd_out(1, 5, display);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _display+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;LCD.c,60 :: 		portd = 0b00000011;
	MOVLW      3
	MOVWF      PORTD+0
;LCD.c,61 :: 		delay_ms(500);
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
;LCD.c,63 :: 		stepping_angle += 30;
	MOVLW      30
	ADDWF      _stepping_angle+0, 0
	MOVWF      R0+0
	MOVF       _stepping_angle+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _stepping_angle+0
	MOVF       R0+1, 0
	MOVWF      _stepping_angle+1
;LCD.c,64 :: 		IntToStr(stepping_angle, display);
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _display+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;LCD.c,65 :: 		lcd_out(1, 5, display);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _display+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;LCD.c,66 :: 		portd = 0b00001001;
	MOVLW      9
	MOVWF      PORTD+0
;LCD.c,67 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;LCD.c,68 :: 		if(stepping_angle == 360) stepping_angle = 0;
	MOVF       _stepping_angle+1, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      104
	XORWF      _stepping_angle+0, 0
L__main12:
	BTFSS      STATUS+0, 2
	GOTO       L_main9
	CLRF       _stepping_angle+0
	CLRF       _stepping_angle+1
L_main9:
;LCD.c,44 :: 		for(i = 0; i < 200; i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;LCD.c,69 :: 		}
	GOTO       L_main2
L_main3:
;LCD.c,73 :: 		}
	GOTO       L_main0
;LCD.c,74 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
