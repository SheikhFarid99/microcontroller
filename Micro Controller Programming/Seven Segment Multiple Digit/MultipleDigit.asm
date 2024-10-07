
_main:

;MultipleDigit.c,2 :: 		void main() {
;MultipleDigit.c,4 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;MultipleDigit.c,5 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;MultipleDigit.c,6 :: 		TRISD = 0x00;
	CLRF       TRISD+0
;MultipleDigit.c,7 :: 		PORTD = 0x00;
	CLRF       PORTD+0
;MultipleDigit.c,9 :: 		while(1)
L_main0:
;MultipleDigit.c,11 :: 		for(i = 0; i < 10000; i++)
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main2:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      39
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main16
	MOVLW      16
	SUBWF      main_i_L0+0, 0
L__main16:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;MultipleDigit.c,13 :: 		firstDigit = i / 1000;
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      main_firstDigit_L0+0
	MOVF       R0+1, 0
	MOVWF      main_firstDigit_L0+1
;MultipleDigit.c,14 :: 		secondDigit = (i / 100) % 10;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_secondDigit_L0+0
	MOVF       R0+1, 0
	MOVWF      main_secondDigit_L0+1
;MultipleDigit.c,15 :: 		thirdDigit = (i / 10) % 10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_thirdDigit_L0+0
	MOVF       R0+1, 0
	MOVWF      main_thirdDigit_L0+1
;MultipleDigit.c,16 :: 		fourthDigit = i % 10;
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
	MOVWF      main_fourthDigit_L0+0
	MOVF       R0+1, 0
	MOVWF      main_fourthDigit_L0+1
;MultipleDigit.c,18 :: 		for(j = 0; j < 12; j++)
	CLRF       main_j_L0+0
	CLRF       main_j_L0+1
L_main5:
	MOVLW      128
	XORWF      main_j_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main17
	MOVLW      12
	SUBWF      main_j_L0+0, 0
L__main17:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;MultipleDigit.c,21 :: 		if(i >= 1000)
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      3
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main18
	MOVLW      232
	SUBWF      main_i_L0+0, 0
L__main18:
	BTFSS      STATUS+0, 0
	GOTO       L_main8
;MultipleDigit.c,23 :: 		PORTD.F0 = 1;
	BSF        PORTD+0, 0
;MultipleDigit.c,24 :: 		PORTB = ch[firstDigit];
	MOVF       main_firstDigit_L0+0, 0
	ADDLW      _ch+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MultipleDigit.c,25 :: 		Delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
	NOP
;MultipleDigit.c,26 :: 		PORTD.F0 = 0;
	BCF        PORTD+0, 0
;MultipleDigit.c,27 :: 		}
L_main8:
;MultipleDigit.c,29 :: 		if(i >= 100)
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main19
	MOVLW      100
	SUBWF      main_i_L0+0, 0
L__main19:
	BTFSS      STATUS+0, 0
	GOTO       L_main10
;MultipleDigit.c,31 :: 		PORTD.F1 = 1;
	BSF        PORTD+0, 1
;MultipleDigit.c,32 :: 		PORTB = ch[secondDigit];
	MOVF       main_secondDigit_L0+0, 0
	ADDLW      _ch+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MultipleDigit.c,33 :: 		Delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
	NOP
;MultipleDigit.c,34 :: 		PORTD.F1 = 0;
	BCF        PORTD+0, 1
;MultipleDigit.c,35 :: 		}
L_main10:
;MultipleDigit.c,37 :: 		if(i >= 10)
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main20
	MOVLW      10
	SUBWF      main_i_L0+0, 0
L__main20:
	BTFSS      STATUS+0, 0
	GOTO       L_main12
;MultipleDigit.c,39 :: 		PORTD.F2 = 1;
	BSF        PORTD+0, 2
;MultipleDigit.c,40 :: 		PORTB = ch[thirdDigit];
	MOVF       main_thirdDigit_L0+0, 0
	ADDLW      _ch+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MultipleDigit.c,41 :: 		Delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	NOP
	NOP
;MultipleDigit.c,42 :: 		PORTD.F2 = 0;
	BCF        PORTD+0, 2
;MultipleDigit.c,43 :: 		}
L_main12:
;MultipleDigit.c,45 :: 		PORTD.F3 = 1;
	BSF        PORTD+0, 3
;MultipleDigit.c,46 :: 		PORTB = ch[fourthDigit];
	MOVF       main_fourthDigit_L0+0, 0
	ADDLW      _ch+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MultipleDigit.c,47 :: 		Delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	NOP
	NOP
;MultipleDigit.c,48 :: 		PORTD.F3 = 0;
	BCF        PORTD+0, 3
;MultipleDigit.c,18 :: 		for(j = 0; j < 12; j++)
	INCF       main_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_j_L0+1, 1
;MultipleDigit.c,49 :: 		}
	GOTO       L_main5
L_main6:
;MultipleDigit.c,11 :: 		for(i = 0; i < 10000; i++)
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;MultipleDigit.c,51 :: 		}
	GOTO       L_main2
L_main3:
;MultipleDigit.c,52 :: 		}
	GOTO       L_main0
;MultipleDigit.c,54 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
