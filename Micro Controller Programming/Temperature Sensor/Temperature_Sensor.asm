
_main:

;Temperature_Sensor.c,21 :: 		void main(){
;Temperature_Sensor.c,22 :: 		ADCON1 = 0x06;
	MOVLW      6
	MOVWF      ADCON1+0
;Temperature_Sensor.c,23 :: 		CMCON = 0x07;
	MOVLW      7
	MOVWF      CMCON+0
;Temperature_Sensor.c,25 :: 		ADC_Init();
	CALL       _ADC_Init+0
;Temperature_Sensor.c,26 :: 		Lcd_Init();                        // Initialize LCD
	CALL       _Lcd_Init+0
;Temperature_Sensor.c,28 :: 		Lcd_Cmd(_LCD_CLEAR);    // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Temperature_Sensor.c,29 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Temperature_Sensor.c,30 :: 		Lcd_Out(1,1,txt);                 // Write text in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Temperature_Sensor.c,31 :: 		Delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
;Temperature_Sensor.c,32 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Temperature_Sensor.c,33 :: 		while(1)
L_main1:
;Temperature_Sensor.c,35 :: 		ADCValue =  ADC_Read(1);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _word2double+0
	MOVF       R0+0, 0
	MOVWF      _ADCValue+0
	MOVF       R0+1, 0
	MOVWF      _ADCValue+1
	MOVF       R0+2, 0
	MOVWF      _ADCValue+2
	MOVF       R0+3, 0
	MOVWF      _ADCValue+3
;Temperature_Sensor.c,36 :: 		temperature = (ADCValue * 4.88) / 10;
	MOVLW      246
	MOVWF      R4+0
	MOVLW      40
	MOVWF      R4+1
	MOVLW      28
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      130
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _temperature+0
	MOVF       R0+1, 0
	MOVWF      _temperature+1
	MOVF       R0+2, 0
	MOVWF      _temperature+2
	MOVF       R0+3, 0
	MOVWF      _temperature+3
;Temperature_Sensor.c,37 :: 		FloatToStr(temperature, ch);
	MOVF       R0+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       R0+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       R0+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       R0+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      _ch+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;Temperature_Sensor.c,38 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Temperature_Sensor.c,39 :: 		Lcd_Out(1,1,"Temp = ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Temperature_Sensor+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Temperature_Sensor.c,40 :: 		Lcd_Out(1,8,ch);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _ch+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Temperature_Sensor.c,41 :: 		strcpy(ch, "");
	MOVLW      _ch+0
	MOVWF      FARG_strcpy_to+0
	MOVLW      ?lstr2_Temperature_Sensor+0
	MOVWF      FARG_strcpy_from+0
	CALL       _strcpy+0
;Temperature_Sensor.c,42 :: 		Delay_ms(1500);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
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
;Temperature_Sensor.c,43 :: 		}
	GOTO       L_main1
;Temperature_Sensor.c,44 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
