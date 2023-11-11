
_main:

;Temperature_sensor.c,19 :: 		void main(){
;Temperature_sensor.c,20 :: 		UART1_Init(9600); // Initialize UART module with baud rate 9600
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;Temperature_sensor.c,21 :: 		Lcd_Init();                        // Initialize LCD
	CALL       _Lcd_Init+0
;Temperature_sensor.c,22 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Temperature_sensor.c,23 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Temperature_sensor.c,25 :: 		i = 0;
	CLRF       _i+0
	CLRF       _i+1
;Temperature_sensor.c,26 :: 		while(1) {
L_main0:
;Temperature_sensor.c,28 :: 		valADC = ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVF       FLOC__main+0, 0
	MOVWF      _valADC+0
	MOVF       FLOC__main+1, 0
	MOVWF      _valADC+1
;Temperature_sensor.c,29 :: 		farhen = (valADC * 9/5) + 32;
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	MOVF       FLOC__main+1, 0
	MOVWF      R0+1
	MOVLW      9
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVLW      5
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVLW      32
	ADDWF      R0+0, 0
	MOVWF      _farhen+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      _farhen+1
;Temperature_sensor.c,31 :: 		IntToStr(valADC,cel);
	MOVF       FLOC__main+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       FLOC__main+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _cel+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;Temperature_sensor.c,32 :: 		IntToStr(farhen,far);
	MOVF       _farhen+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _farhen+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _far+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;Temperature_sensor.c,34 :: 		Lcd_Out(1,1,"Celsius:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Temperature_sensor+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Temperature_sensor.c,35 :: 		Lcd_Out(1,10,cel);                 // Write text in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _cel+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Temperature_sensor.c,36 :: 		Lcd_Out(2,1,"Fahrenheit:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_Temperature_sensor+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Temperature_sensor.c,37 :: 		Lcd_Out(2,10,far);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _far+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Temperature_sensor.c,38 :: 		}
	GOTO       L_main0
;Temperature_sensor.c,39 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
