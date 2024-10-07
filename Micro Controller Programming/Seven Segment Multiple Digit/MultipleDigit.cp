#line 1 "C:/Users/samim/Desktop/Micro Controller Programming/Seven Segment Multiple Digit/MultipleDigit.c"
char ch[] = {0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90};
void main() {
 int i, j, firstDigit, secondDigit, thirdDigit, fourthDigit;
 TRISB = 0x00;
 PORTB = 0x00;
 TRISD = 0x00;
 PORTD = 0x00;

 while(1)
 {
 for(i = 0; i < 10000; i++)
 {
 firstDigit = i / 1000;
 secondDigit = (i / 100) % 10;
 thirdDigit = (i / 10) % 10;
 fourthDigit = i % 10;

 for(j = 0; j < 12; j++)
 {

 if(i >= 1000)
 {
 PORTD.F0 = 1;
 PORTB = ch[firstDigit];
 Delay_ms(5);
 PORTD.F0 = 0;
 }

 if(i >= 100)
 {
 PORTD.F1 = 1;
 PORTB = ch[secondDigit];
 Delay_ms(5);
 PORTD.F1 = 0;
 }

 if(i >= 10)
 {
 PORTD.F2 = 1;
 PORTB = ch[thirdDigit];
 Delay_ms(5);
 PORTD.F2 = 0;
 }

 PORTD.F3 = 1;
 PORTB = ch[fourthDigit];
 Delay_ms(5);
 PORTD.F3 = 0;
 }

 }
 }

}
