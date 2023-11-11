
_main:

;ADC_Input_TXRX.c,3 :: 		void main() {
;ADC_Input_TXRX.c,4 :: 		UART1_Init(9600);
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;ADC_Input_TXRX.c,5 :: 		ADC_Init();
	CALL       _ADC_Init+0
;ADC_Input_TXRX.c,6 :: 		while(1)
L_main0:
;ADC_Input_TXRX.c,9 :: 		valADC = ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _valADC+0
	MOVF       R0+1, 0
	MOVWF      _valADC+1
;ADC_Input_TXRX.c,10 :: 		valADC1 = ADC_Read(1);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _valADC1+0
	MOVF       R0+1, 0
	MOVWF      _valADC1+1
;ADC_Input_TXRX.c,12 :: 		IntToStr(valADC,x);
	MOVF       _valADC+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _valADC+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _x+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;ADC_Input_TXRX.c,14 :: 		UART1_Write_Text("Analog value =");
	MOVLW      ?lstr1_ADC_Input_TXRX+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ADC_Input_TXRX.c,15 :: 		UART1_Write_Text(x);
	MOVLW      _x+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ADC_Input_TXRX.c,16 :: 		UART1_Write_Text("    ");
	MOVLW      ?lstr2_ADC_Input_TXRX+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ADC_Input_TXRX.c,17 :: 		IntToStr(valADC1,x);
	MOVF       _valADC1+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _valADC1+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _x+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;ADC_Input_TXRX.c,18 :: 		UART1_Write_Text("Analog value =");
	MOVLW      ?lstr3_ADC_Input_TXRX+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ADC_Input_TXRX.c,19 :: 		UART1_Write_Text(x);
	MOVLW      _x+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ADC_Input_TXRX.c,20 :: 		UART1_Write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;ADC_Input_TXRX.c,21 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;ADC_Input_TXRX.c,22 :: 		}
	GOTO       L_main0
;ADC_Input_TXRX.c,24 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
