#line 1 "C:/Users/samim/Desktop/Micro Controller Programming/Seven Segment Single Digit/SingleDigit.c"
char ch[] = {0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90};
void main() {
 int i = 0;
 TRISD = 0x00;
 TRISB.F0 = 1;
 TRISB.F1 = 1;
 PORTD = 0xFF;

 while(1)
 {
 if(PORTB.F1 == 1)
 {
 Delay_ms(150);
 if(PORTB.F1 == 1)
 {
 if(i < 9)
 {
 i++;
 }
 PORTD = ch[i];
 }
 }
 if(PORTB.F0 == 1)
 {
 Delay_ms(150);
 if(PORTB.F0 == 1)
 {
 if(i > 0)
 {
 i--;
 }
 PORTD = ch[i];
 }
 }
 }
}
