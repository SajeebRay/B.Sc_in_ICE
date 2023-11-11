
_main:

;Seven_seg.c,3 :: 		void main() {
;Seven_seg.c,4 :: 		int i = 0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;Seven_seg.c,5 :: 		TRISD = 0x00; //set all pincs of port d
	CLRF       TRISD+0
;Seven_seg.c,6 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;Seven_seg.c,8 :: 		for(i = 9; i  >= 0; i--){
	MOVLW      9
	MOVWF      main_i_L0+0
	MOVLW      0
	MOVWF      main_i_L0+1
L_main0:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main6
	MOVLW      0
	SUBWF      main_i_L0+0, 0
L__main6:
	BTFSS      STATUS+0, 0
	GOTO       L_main1
;Seven_seg.c,11 :: 		portb = arraCA[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _arraCA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Seven_seg.c,12 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;Seven_seg.c,13 :: 		if(i == 0) i = 10;  //again restart
	MOVLW      0
	XORWF      main_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main7
	MOVLW      0
	XORWF      main_i_L0+0, 0
L__main7:
	BTFSS      STATUS+0, 2
	GOTO       L_main4
	MOVLW      10
	MOVWF      main_i_L0+0
	MOVLW      0
	MOVWF      main_i_L0+1
L_main4:
;Seven_seg.c,8 :: 		for(i = 9; i  >= 0; i--){
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
;Seven_seg.c,14 :: 		}
	GOTO       L_main0
L_main1:
;Seven_seg.c,15 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
