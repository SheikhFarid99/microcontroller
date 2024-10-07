
_main:

;CCP.c,1 :: 		void main() {
;CCP.c,2 :: 		short duty = 0;
	CLRF       main_duty_L0+0
;CCP.c,3 :: 		TRISD.F0 = 0;
	BCF        TRISD+0, 0
;CCP.c,4 :: 		TRISD.F1 = 0;
	BCF        TRISD+0, 1
;CCP.c,6 :: 		TRISB.F0 = 1;
	BSF        TRISB+0, 0
;CCP.c,7 :: 		TRISB.F1 = 1;
	BSF        TRISB+0, 1
;CCP.c,9 :: 		PORTD.F0 = 1;
	BSF        PORTD+0, 0
;CCP.c,10 :: 		PORTD.F1 = 0;
	BCF        PORTD+0, 1
;CCP.c,12 :: 		PWM1_Init(1000);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      124
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;CCP.c,13 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;CCP.c,15 :: 		while(1)
L_main0:
;CCP.c,17 :: 		if(PORTB.F0 == 1 && duty < 250)
	BTFSS      PORTB+0, 0
	GOTO       L_main4
	MOVLW      128
	BTFSC      main_duty_L0+0, 7
	MOVLW      127
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main21
	MOVLW      250
	SUBWF      main_duty_L0+0, 0
L__main21:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
L__main19:
;CCP.c,19 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;CCP.c,20 :: 		if(PORTB.F0 == 1 && duty < 250)
	BTFSS      PORTB+0, 0
	GOTO       L_main8
	MOVLW      128
	BTFSC      main_duty_L0+0, 7
	MOVLW      127
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main22
	MOVLW      250
	SUBWF      main_duty_L0+0, 0
L__main22:
	BTFSC      STATUS+0, 0
	GOTO       L_main8
L__main18:
;CCP.c,22 :: 		duty += 10;
	MOVLW      10
	ADDWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
;CCP.c,23 :: 		PWM1_Set_Duty(duty);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;CCP.c,24 :: 		}
L_main8:
;CCP.c,25 :: 		}
L_main4:
;CCP.c,27 :: 		if(PORTB.F1 == 1 && duty > 0)
	BTFSS      PORTB+0, 1
	GOTO       L_main11
	MOVLW      128
	XORLW      0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_duty_L0+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main11
L__main17:
;CCP.c,29 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	DECFSZ     R11+0, 1
	GOTO       L_main12
	NOP
;CCP.c,30 :: 		if(PORTB.F1 == 1 && duty > 0)
	BTFSS      PORTB+0, 1
	GOTO       L_main15
	MOVLW      128
	XORLW      0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_duty_L0+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main15
L__main16:
;CCP.c,32 :: 		duty -= 10;
	MOVLW      10
	SUBWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
;CCP.c,33 :: 		PWM1_Set_Duty(duty);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;CCP.c,34 :: 		}
L_main15:
;CCP.c,35 :: 		}
L_main11:
;CCP.c,36 :: 		}
	GOTO       L_main0
;CCP.c,37 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
