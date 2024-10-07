
_main:

;Stepper_Motor.c,1 :: 		void main() {
;Stepper_Motor.c,2 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;Stepper_Motor.c,3 :: 		PORTC = 0xFF;
	MOVLW      255
	MOVWF      PORTC+0
;Stepper_Motor.c,5 :: 		while(1)
L_main0:
;Stepper_Motor.c,7 :: 		PORTC = 0b00000011;
	MOVLW      3
	MOVWF      PORTC+0
;Stepper_Motor.c,8 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;Stepper_Motor.c,9 :: 		PORTC = 0b00000110;
	MOVLW      6
	MOVWF      PORTC+0
;Stepper_Motor.c,10 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;Stepper_Motor.c,11 :: 		PORTC = 0b00001100;
	MOVLW      12
	MOVWF      PORTC+0
;Stepper_Motor.c,12 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;Stepper_Motor.c,13 :: 		PORTC = 0b00001001;
	MOVLW      9
	MOVWF      PORTC+0
;Stepper_Motor.c,14 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;Stepper_Motor.c,15 :: 		}
	GOTO       L_main0
;Stepper_Motor.c,16 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
