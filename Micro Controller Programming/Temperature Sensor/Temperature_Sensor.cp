#line 1 "C:/Users/samim/Desktop/Micro Controller Programming/Temperature Sensor/Temperature_Sensor.c"

sbit LCD_RS at RD2_bit;
sbit LCD_EN at RD3_bit;
sbit LCD_D4 at RD4_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D7 at RD7_bit;

sbit LCD_RS_Direction at TRISD2_bit;
sbit LCD_EN_Direction at TRISD3_bit;
sbit LCD_D4_Direction at TRISD4_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D7_Direction at TRISD7_bit;

char txt[] = "Temp Sensor";
char ch[4];

float temperature, ADCValue, result;

void main(){
 ADCON1 = 0x06;
 CMCON = 0x07;

 ADC_Init();
 Lcd_Init();

 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Out(1,1,txt);
 Delay_ms(2000);
 Lcd_Cmd(_LCD_CLEAR);
 while(1)
 {
 ADCValue = ADC_Read(1);
 temperature = (ADCValue * 4.88) / 10;
 FloatToStr(temperature, ch);
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,1,"Temp = ");
 Lcd_Out(1,8,ch);
 strcpy(ch, "");
 Delay_ms(1500);
 }
}
