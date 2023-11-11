
_main:

;Fan_control.c,1 :: 		void main() {
;Fan_control.c,2 :: 		unsigned short duty = 0;
	CLRF       main_duty_L0+0
;Fan_control.c,3 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;Fan_control.c,4 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;Fan_control.c,5 :: 		TRISD = 0xff;
	MOVLW      255
	MOVWF      TRISD+0
;Fan_control.c,6 :: 		portb.f0 = 0xff; // initialize
	BSF        PORTB+0, 0
;Fan_control.c,7 :: 		portb.f1 = 0x00;
	BCF        PORTB+0, 1
;Fan_control.c,9 :: 		PWM1_Init(1000); // Initialize PWM
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      124
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;Fan_control.c,10 :: 		PWM1_Start(); // start PWM
	CALL       _PWM1_Start+0
;Fan_control.c,11 :: 		PWM1_Set_Duty(duty); // set current duty for PWM1
	MOVF       main_duty_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Fan_control.c,13 :: 		while(1)
L_main0:
;Fan_control.c,16 :: 		if(portd.f0 ==1)
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;Fan_control.c,18 :: 		delay_ms(200);
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
;Fan_control.c,19 :: 		if(duty <= 240)
	MOVF       main_duty_L0+0, 0
	SUBLW      240
	BTFSS      STATUS+0, 0
	GOTO       L_main4
;Fan_control.c,21 :: 		if(portd.f0 == 1)
	BTFSS      PORTD+0, 0
	GOTO       L_main5
;Fan_control.c,23 :: 		duty = duty +10;
	MOVLW      10
	ADDWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
;Fan_control.c,24 :: 		PWM1_Set_Duty(duty);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Fan_control.c,25 :: 		}
L_main5:
;Fan_control.c,26 :: 		}
L_main4:
;Fan_control.c,27 :: 		}
L_main2:
;Fan_control.c,29 :: 		if(portd.f1 == 1)
	BTFSS      PORTD+0, 1
	GOTO       L_main6
;Fan_control.c,31 :: 		delay_ms(200);
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
;Fan_control.c,32 :: 		if(duty >= 10)
	MOVLW      10
	SUBWF      main_duty_L0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main8
;Fan_control.c,34 :: 		if(portd.f1 == 1)
	BTFSS      PORTD+0, 1
	GOTO       L_main9
;Fan_control.c,36 :: 		duty = duty - 1;
	DECF       main_duty_L0+0, 1
;Fan_control.c,37 :: 		PWM1_Set_Duty(duty);
	MOVF       main_duty_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Fan_control.c,38 :: 		}
L_main9:
;Fan_control.c,39 :: 		}
L_main8:
;Fan_control.c,40 :: 		}
L_main6:
;Fan_control.c,41 :: 		}
	GOTO       L_main0
;Fan_control.c,42 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
