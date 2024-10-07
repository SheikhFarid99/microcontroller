
_main:

;Dot_Matrix_Display.c,1 :: 		void main() {
;Dot_Matrix_Display.c,2 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;Dot_Matrix_Display.c,3 :: 		TRISD = 0x00;
	CLRF       TRISD+0
;Dot_Matrix_Display.c,5 :: 		while(1)
L_main0:
;Dot_Matrix_Display.c,7 :: 		PORTD = 1<<7;
	MOVLW      128
	MOVWF      PORTD+0
;Dot_Matrix_Display.c,8 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;Dot_Matrix_Display.c,9 :: 		Delay_us(100);
	MOVLW      66
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	NOP
;Dot_Matrix_Display.c,11 :: 		PORTD = 1<<6;
	MOVLW      64
	MOVWF      PORTD+0
;Dot_Matrix_Display.c,12 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;Dot_Matrix_Display.c,13 :: 		Delay_us(100);
	MOVLW      66
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	NOP
;Dot_Matrix_Display.c,15 :: 		PORTD = 1<<5;
	MOVLW      32
	MOVWF      PORTD+0
;Dot_Matrix_Display.c,16 :: 		PORTB = 0x90;
	MOVLW      144
	MOVWF      PORTB+0
;Dot_Matrix_Display.c,17 :: 		Delay_us(100);
	MOVLW      66
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	NOP
;Dot_Matrix_Display.c,19 :: 		PORTD = 1<<4;
	MOVLW      16
	MOVWF      PORTD+0
;Dot_Matrix_Display.c,20 :: 		PORTB = 0x90;
	MOVLW      144
	MOVWF      PORTB+0
;Dot_Matrix_Display.c,21 :: 		Delay_us(100);
	MOVLW      66
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	NOP
;Dot_Matrix_Display.c,23 :: 		PORTD = 1<<3;
	MOVLW      8
	MOVWF      PORTD+0
;Dot_Matrix_Display.c,24 :: 		PORTB = 0x90;
	MOVLW      144
	MOVWF      PORTB+0
;Dot_Matrix_Display.c,25 :: 		Delay_us(100);
	MOVLW      66
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	NOP
;Dot_Matrix_Display.c,27 :: 		PORTD = 1<<2;
	MOVLW      4
	MOVWF      PORTD+0
;Dot_Matrix_Display.c,28 :: 		PORTB = 0x90;
	MOVLW      144
	MOVWF      PORTB+0
;Dot_Matrix_Display.c,29 :: 		Delay_us(100);
	MOVLW      66
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	NOP
;Dot_Matrix_Display.c,31 :: 		PORTD = 1<<1;
	MOVLW      2
	MOVWF      PORTD+0
;Dot_Matrix_Display.c,32 :: 		PORTB = 0xFF;
	MOVLW      255
	MOVWF      PORTB+0
;Dot_Matrix_Display.c,33 :: 		Delay_us(100);
	MOVLW      66
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	NOP
;Dot_Matrix_Display.c,35 :: 		PORTD = 1<<0;
	MOVLW      1
	MOVWF      PORTD+0
;Dot_Matrix_Display.c,36 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;Dot_Matrix_Display.c,37 :: 		Delay_us(100);
	MOVLW      66
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	NOP
;Dot_Matrix_Display.c,38 :: 		}
	GOTO       L_main0
;Dot_Matrix_Display.c,39 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
