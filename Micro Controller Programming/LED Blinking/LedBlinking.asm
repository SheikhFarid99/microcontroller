
_main:

;LedBlinking.c,1 :: 		void main() {
;LedBlinking.c,2 :: 		TRISB = 0;
	CLRF       TRISB+0
;LedBlinking.c,3 :: 		while(1)
L_main0:
;LedBlinking.c,5 :: 		PORTB = 0x02;
	MOVLW      2
	MOVWF      PORTB+0
;LedBlinking.c,6 :: 		Delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;LedBlinking.c,7 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;LedBlinking.c,8 :: 		Delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;LedBlinking.c,9 :: 		}
	GOTO       L_main0
;LedBlinking.c,10 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
