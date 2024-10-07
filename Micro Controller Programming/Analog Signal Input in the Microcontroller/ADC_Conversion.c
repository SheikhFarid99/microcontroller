int ADCValue;
char ch[4];
void main() {
   UART1_Init(9600);
   ADC_Init();
   while(1)
   {
       ADCValue = ADC_Read(1);
       IntToStr(ADCValue, ch);
       UART1_Write_Text("Analog Value - ");
       UART1_Write_Text(ch);
       strcpy(ch, "");
       UART1_Write(13);
       Delay_ms(1000);
   }
}