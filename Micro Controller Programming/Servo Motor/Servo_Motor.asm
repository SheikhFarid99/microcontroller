
_rotate0:

;Servo_Motor.c,1 :: 		void rotate0()
;Servo_Motor.c,3 :: 		int i = 0;
	CLRF       rotate0_i_L0+0
	CLRF       rotate0_i_L0+1
;Servo_Motor.c,4 :: 		for(i = 0; i < 50; i++)
	CLRF       rotate0_i_L0+0
	CLRF       rotate0_i_L0+1
L_rotate00:
	MOVLW      128
	XORWF      rotate0_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__rotate021
	MOVLW      50
	SUBWF      rotate0_i_L0+0, 0
L__rotate021:
	BTFSC      STATUS+0, 0
	GOTO       L_rotate01
;Servo_Motor.c,6 :: 		PORTD.F1 = 1;
	BSF        PORTD+0, 1
;Servo_Motor.c,7 :: 		Delay_us(800);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      18
	MOVWF      R13+0
L_rotate03:
	DECFSZ     R13+0, 1
	GOTO       L_rotate03
	DECFSZ     R12+0, 1
	GOTO       L_rotate03
	NOP
;Servo_Motor.c,8 :: 		PORTD.F1 = 0;
	BCF        PORTD+0, 1
;Servo_Motor.c,9 :: 		Delay_us(19200);
	MOVLW      50
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_rotate04:
	DECFSZ     R13+0, 1
	GOTO       L_rotate04
	DECFSZ     R12+0, 1
	GOTO       L_rotate04
	NOP
	NOP
;Servo_Motor.c,4 :: 		for(i = 0; i < 50; i++)
	INCF       rotate0_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       rotate0_i_L0+1, 1
;Servo_Motor.c,10 :: 		}
	GOTO       L_rotate00
L_rotate01:
;Servo_Motor.c,11 :: 		}
L_end_rotate0:
	RETURN
; end of _rotate0

_rotate90:

;Servo_Motor.c,13 :: 		void rotate90()
;Servo_Motor.c,15 :: 		int i = 0;
	CLRF       rotate90_i_L0+0
	CLRF       rotate90_i_L0+1
;Servo_Motor.c,16 :: 		for(i = 0; i < 50; i++)
	CLRF       rotate90_i_L0+0
	CLRF       rotate90_i_L0+1
L_rotate905:
	MOVLW      128
	XORWF      rotate90_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__rotate9023
	MOVLW      50
	SUBWF      rotate90_i_L0+0, 0
L__rotate9023:
	BTFSC      STATUS+0, 0
	GOTO       L_rotate906
;Servo_Motor.c,18 :: 		PORTD.F1 = 1;
	BSF        PORTD+0, 1
;Servo_Motor.c,19 :: 		Delay_us(1500);
	MOVLW      4
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_rotate908:
	DECFSZ     R13+0, 1
	GOTO       L_rotate908
	DECFSZ     R12+0, 1
	GOTO       L_rotate908
	NOP
;Servo_Motor.c,20 :: 		PORTD.F1 = 0;
	BCF        PORTD+0, 1
;Servo_Motor.c,21 :: 		Delay_us(18500);
	MOVLW      49
	MOVWF      R12+0
	MOVLW      11
	MOVWF      R13+0
L_rotate909:
	DECFSZ     R13+0, 1
	GOTO       L_rotate909
	DECFSZ     R12+0, 1
	GOTO       L_rotate909
	NOP
	NOP
;Servo_Motor.c,16 :: 		for(i = 0; i < 50; i++)
	INCF       rotate90_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       rotate90_i_L0+1, 1
;Servo_Motor.c,22 :: 		}
	GOTO       L_rotate905
L_rotate906:
;Servo_Motor.c,23 :: 		}
L_end_rotate90:
	RETURN
; end of _rotate90

_rotate180:

;Servo_Motor.c,25 :: 		void rotate180()
;Servo_Motor.c,27 :: 		int i = 0;
	CLRF       rotate180_i_L0+0
	CLRF       rotate180_i_L0+1
;Servo_Motor.c,28 :: 		for(i = 0; i < 50; i++)
	CLRF       rotate180_i_L0+0
	CLRF       rotate180_i_L0+1
L_rotate18010:
	MOVLW      128
	XORWF      rotate180_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__rotate18025
	MOVLW      50
	SUBWF      rotate180_i_L0+0, 0
L__rotate18025:
	BTFSC      STATUS+0, 0
	GOTO       L_rotate18011
;Servo_Motor.c,30 :: 		PORTD.F1 = 1;
	BSF        PORTD+0, 1
;Servo_Motor.c,31 :: 		Delay_us(2200);
	MOVLW      6
	MOVWF      R12+0
	MOVLW      181
	MOVWF      R13+0
L_rotate18013:
	DECFSZ     R13+0, 1
	GOTO       L_rotate18013
	DECFSZ     R12+0, 1
	GOTO       L_rotate18013
	NOP
	NOP
;Servo_Motor.c,32 :: 		PORTD.F1 = 0;
	BCF        PORTD+0, 1
;Servo_Motor.c,33 :: 		Delay_us(17800);
	MOVLW      47
	MOVWF      R12+0
	MOVLW      58
	MOVWF      R13+0
L_rotate18014:
	DECFSZ     R13+0, 1
	GOTO       L_rotate18014
	DECFSZ     R12+0, 1
	GOTO       L_rotate18014
	NOP
;Servo_Motor.c,28 :: 		for(i = 0; i < 50; i++)
	INCF       rotate180_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       rotate180_i_L0+1, 1
;Servo_Motor.c,34 :: 		}
	GOTO       L_rotate18010
L_rotate18011:
;Servo_Motor.c,35 :: 		}
L_end_rotate180:
	RETURN
; end of _rotate180

_main:

;Servo_Motor.c,37 :: 		void main() {
;Servo_Motor.c,38 :: 		TRISD.F1 = 0;
	BCF        TRISD+0, 1
;Servo_Motor.c,39 :: 		PORTD.F1 = 0;
	BCF        PORTD+0, 1
;Servo_Motor.c,41 :: 		while(1)
L_main15:
;Servo_Motor.c,43 :: 		rotate0();
	CALL       _rotate0+0
;Servo_Motor.c,44 :: 		Delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	DECFSZ     R11+0, 1
	GOTO       L_main17
	NOP
;Servo_Motor.c,45 :: 		rotate90();
	CALL       _rotate90+0
;Servo_Motor.c,46 :: 		Delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
;Servo_Motor.c,47 :: 		rotate180();
	CALL       _rotate180+0
;Servo_Motor.c,48 :: 		Delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
	NOP
;Servo_Motor.c,49 :: 		}
	GOTO       L_main15
;Servo_Motor.c,50 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
