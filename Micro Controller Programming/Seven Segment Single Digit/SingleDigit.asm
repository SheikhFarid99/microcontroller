
_main:

;SingleDigit.c,2 :: 		void main() {
;SingleDigit.c,3 :: 		int i = 0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;SingleDigit.c,4 :: 		TRISD = 0x00;
	CLRF       TRISD+0
;SingleDigit.c,5 :: 		TRISB.F0 = 1;
	BSF        TRISB+0, 0
;SingleDigit.c,6 :: 		TRISB.F1 = 1;
	BSF        TRISB+0, 1
;SingleDigit.c,7 :: 		PORTD = 0xFF;
	MOVLW      255
	MOVWF      PORTD+0
;SingleDigit.c,9 :: 		while(1)
L_main0:
;SingleDigit.c,11 :: 		if(PORTB.F1 == 1)
	BTFSS      PORTB+0, 1
	GOTO       L_main2
;SingleDigit.c,13 :: 		Delay_ms(150);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;SingleDigit.c,14 :: 		if(PORTB.F1 == 1)
	BTFSS      PORTB+0, 1
	GOTO       L_main4
;SingleDigit.c,16 :: 		if(i < 9)
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
;SingleDigit.c,18 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;SingleDigit.c,19 :: 		}
L_main5:
;SingleDigit.c,20 :: 		PORTD = ch[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _ch+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;SingleDigit.c,21 :: 		}
L_main4:
;SingleDigit.c,22 :: 		}
L_main2:
;SingleDigit.c,23 :: 		if(PORTB.F0 == 1)
	BTFSS      PORTB+0, 0
	GOTO       L_main6
;SingleDigit.c,25 :: 		Delay_ms(150);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
;SingleDigit.c,26 :: 		if(PORTB.F0 == 1)
	BTFSS      PORTB+0, 0
	GOTO       L_main8
;SingleDigit.c,28 :: 		if(i > 0)
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
;SingleDigit.c,30 :: 		i--;
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
;SingleDigit.c,31 :: 		}
L_main9:
;SingleDigit.c,32 :: 		PORTD = ch[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _ch+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;SingleDigit.c,33 :: 		}
L_main8:
;SingleDigit.c,34 :: 		}
L_main6:
;SingleDigit.c,35 :: 		}
	GOTO       L_main0
;SingleDigit.c,36 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
