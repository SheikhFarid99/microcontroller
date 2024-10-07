
_main:

;ADC_Conversion.c,3 :: 		void main() {
;ADC_Conversion.c,4 :: 		UART1_Init(9600);
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;ADC_Conversion.c,5 :: 		ADC_Init();
	CALL       _ADC_Init+0
;ADC_Conversion.c,6 :: 		while(1)
L_main0:
;ADC_Conversion.c,8 :: 		ADCValue = ADC_Read(1);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _ADCValue+0
	MOVF       R0+1, 0
	MOVWF      _ADCValue+1
;ADC_Conversion.c,9 :: 		IntToStr(ADCValue, ch);
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _ch+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;ADC_Conversion.c,10 :: 		UART1_Write_Text("Analog Value - ");
	MOVLW      ?lstr1_ADC_Conversion+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ADC_Conversion.c,11 :: 		UART1_Write_Text(ch);
	MOVLW      _ch+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;ADC_Conversion.c,12 :: 		strcpy(ch, "");
	MOVLW      _ch+0
	MOVWF      FARG_strcpy_to+0
	MOVLW      ?lstr2_ADC_Conversion+0
	MOVWF      FARG_strcpy_from+0
	CALL       _strcpy+0
;ADC_Conversion.c,13 :: 		UART1_Write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;ADC_Conversion.c,14 :: 		Delay_ms(1000);
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
;ADC_Conversion.c,15 :: 		}
	GOTO       L_main0
;ADC_Conversion.c,16 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
