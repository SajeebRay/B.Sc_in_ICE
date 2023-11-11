
_display:

;Practice.c,3 :: 		void display(unsigned short time){
;Practice.c,5 :: 		digit2 = time%10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_display_time+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _digit2+0
;Practice.c,6 :: 		digit1 = (time/10)%10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       FARG_display_time+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVLW      10
	MOVWF      R4+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      _digit1+0
;Practice.c,7 :: 		portc.f0 = 0xff;
	BSF        PORTC+0, 0
;Practice.c,8 :: 		portb = arraCA[digit1];
	MOVF       R0+0, 0
	ADDLW      _arraCA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Practice.c,9 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_display0:
	DECFSZ     R13+0, 1
	GOTO       L_display0
	DECFSZ     R12+0, 1
	GOTO       L_display0
	NOP
;Practice.c,10 :: 		portc.f0 = 0x00;
	BCF        PORTC+0, 0
;Practice.c,11 :: 		portc.f1 = 0xff;
	BSF        PORTC+0, 1
;Practice.c,12 :: 		portb = arraCA[digit2];
	MOVF       _digit2+0, 0
	ADDLW      _arraCA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Practice.c,13 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_display1:
	DECFSZ     R13+0, 1
	GOTO       L_display1
	DECFSZ     R12+0, 1
	GOTO       L_display1
	NOP
;Practice.c,14 :: 		portc.f1 = 0x00;
	BCF        PORTC+0, 1
;Practice.c,15 :: 		}
L_end_display:
	RETURN
; end of _display

_main:

;Practice.c,16 :: 		void main() {
;Practice.c,17 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;Practice.c,18 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;Practice.c,19 :: 		TRISD = 0xff;
	MOVLW      255
	MOVWF      TRISD+0
;Practice.c,20 :: 		portb = portc = 0x00;
	CLRF       PORTC+0
	MOVF       PORTC+0, 0
	MOVWF      PORTB+0
;Practice.c,22 :: 		if(EEPROM_Read(0x02) == 0xff){             // Read data from address 2 and display it on PORTB
	MOVLW      2
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	XORLW      255
	BTFSS      STATUS+0, 2
	GOTO       L_main2
;Practice.c,23 :: 		time = 0;
	CLRF       _time+0
;Practice.c,24 :: 		} else time = EEPROM_Read(0x02);
	GOTO       L_main3
L_main2:
	MOVLW      2
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _time+0
L_main3:
;Practice.c,26 :: 		while(1){
L_main4:
;Practice.c,27 :: 		if(set == 0){
	MOVF       _set+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main6
;Practice.c,28 :: 		if(portd.f0 == 0xff){
	BTFSS      PORTD+0, 0
	GOTO       L_main7
;Practice.c,29 :: 		delay_ms(80);
	MOVLW      208
	MOVWF      R12+0
	MOVLW      201
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
	NOP
;Practice.c,30 :: 		if(portd.f0 = 0xff){
	BSF        PORTD+0, 0
	BTFSS      PORTD+0, 0
	GOTO       L_main9
;Practice.c,31 :: 		if(time > 0){
	MOVF       _time+0, 0
	SUBLW      0
	BTFSC      STATUS+0, 0
	GOTO       L_main10
;Practice.c,32 :: 		time--;
	DECF       _time+0, 1
;Practice.c,33 :: 		EEPROM_Write(0x02,time);  // Write time at address 2
	MOVLW      2
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _time+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;Practice.c,34 :: 		}
L_main10:
;Practice.c,35 :: 		}
L_main9:
;Practice.c,36 :: 		}
L_main7:
;Practice.c,37 :: 		if(portd.f1 == 0xff){
	BTFSS      PORTD+0, 1
	GOTO       L_main11
;Practice.c,38 :: 		delay_ms(80);
	MOVLW      208
	MOVWF      R12+0
	MOVLW      201
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	NOP
	NOP
;Practice.c,39 :: 		if(portd.f1 = 0xff){
	BSF        PORTD+0, 1
	BTFSS      PORTD+0, 1
	GOTO       L_main13
;Practice.c,40 :: 		if(time < 250) {
	MOVLW      250
	SUBWF      _time+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main14
;Practice.c,41 :: 		time++;
	INCF       _time+0, 1
;Practice.c,42 :: 		EEPROM_Write(0x02,time);  // Write time at address 2
	MOVLW      2
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _time+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;Practice.c,43 :: 		}
L_main14:
;Practice.c,44 :: 		}
L_main13:
;Practice.c,45 :: 		}
L_main11:
;Practice.c,46 :: 		if(portd.f4 == 0xff){
	BTFSS      PORTD+0, 4
	GOTO       L_main15
;Practice.c,47 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	DECFSZ     R11+0, 1
	GOTO       L_main16
;Practice.c,48 :: 		if(portd.f4 = 0xff){
	BSF        PORTD+0, 4
	BTFSS      PORTD+0, 4
	GOTO       L_main17
;Practice.c,49 :: 		set = 1;
	MOVLW      1
	MOVWF      _set+0
;Practice.c,50 :: 		}
L_main17:
;Practice.c,51 :: 		}
L_main15:
;Practice.c,52 :: 		display(time);
	MOVF       _time+0, 0
	MOVWF      FARG_display_time+0
	CALL       _display+0
;Practice.c,53 :: 		portc.f7 = 0x00;
	BCF        PORTC+0, 7
;Practice.c,54 :: 		}
L_main6:
;Practice.c,56 :: 		if(set == 1){
	MOVF       _set+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main18
;Practice.c,57 :: 		portc.f7 = 0xff;
	BSF        PORTC+0, 7
;Practice.c,58 :: 		while(time){
L_main19:
	MOVF       _time+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main20
;Practice.c,59 :: 		for(i = 0;i < 50; i++){
	CLRF       _i+0
L_main21:
	MOVLW      50
	SUBWF      _i+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main22
;Practice.c,60 :: 		display(time);
	MOVF       _time+0, 0
	MOVWF      FARG_display_time+0
	CALL       _display+0
;Practice.c,61 :: 		if(portd.f4 == 0xff){
	BTFSS      PORTD+0, 4
	GOTO       L_main24
;Practice.c,62 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main25:
	DECFSZ     R13+0, 1
	GOTO       L_main25
	DECFSZ     R12+0, 1
	GOTO       L_main25
	DECFSZ     R11+0, 1
	GOTO       L_main25
;Practice.c,63 :: 		if(portd.f4 = 0xff){
	BSF        PORTD+0, 4
	BTFSS      PORTD+0, 4
	GOTO       L_main26
;Practice.c,64 :: 		set = 0;
	CLRF       _set+0
;Practice.c,65 :: 		break;
	GOTO       L_main22
;Practice.c,66 :: 		}
L_main26:
;Practice.c,67 :: 		}
L_main24:
;Practice.c,59 :: 		for(i = 0;i < 50; i++){
	INCF       _i+0, 1
;Practice.c,68 :: 		}
	GOTO       L_main21
L_main22:
;Practice.c,69 :: 		time--;
	DECF       _time+0, 1
;Practice.c,70 :: 		EEPROM_Write(0x02,time);  // Write time at address 2
	MOVLW      2
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _time+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;Practice.c,71 :: 		if(time == 0) set = 0;
	MOVF       _time+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main27
	CLRF       _set+0
L_main27:
;Practice.c,72 :: 		if(set == 0) break;
	MOVF       _set+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main28
	GOTO       L_main20
L_main28:
;Practice.c,73 :: 		}
	GOTO       L_main19
L_main20:
;Practice.c,74 :: 		}
L_main18:
;Practice.c,75 :: 		}
	GOTO       L_main4
;Practice.c,76 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
