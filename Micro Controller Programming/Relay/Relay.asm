
_main:

;Relay.c,1 :: 		void main() {
;Relay.c,2 :: 		TRISD.F0 = 0;
	BCF        TRISD+0, 0
;Relay.c,3 :: 		PORTD.F0 = 0;
	BCF        PORTD+0, 0
;Relay.c,5 :: 		while(1)
L_main0:
;Relay.c,7 :: 		PORTD.F0 = 1;
	BSF        PORTD+0, 0
;Relay.c,8 :: 		Delay_ms(1000);
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
;Relay.c,9 :: 		PORTD.F0 = 0;
	BCF        PORTD+0, 0
;Relay.c,10 :: 		Delay_ms(1000);
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
;Relay.c,11 :: 		}
	GOTO       L_main0
;Relay.c,12 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
