#line 1 "C:/Users/samim/Desktop/Micro Controller Programming/Dot Matrix Display/Dot_Matrix_Display.c"
void main() {
 TRISB = 0x00;
 TRISD = 0x00;

 while(1)
 {
 PORTD = 1<<7;
 PORTB = 0xDF;
 Delay_us(100);

 PORTD = 1<<6;
 PORTB = 0xDF;
 Delay_us(100);

 PORTD = 1<<5;
 PORTB = 0xDB;
 Delay_us(100);

 PORTD = 1<<4;
 PORTB = 0xDB;
 Delay_us(100);

 PORTD = 1<<3;
 PORTB = 0xDB;
 Delay_us(100);

 PORTD = 1<<2;
 PORTB = 0xDB;
 Delay_us(100);

 PORTD = 1<<1;
 PORTB = 0xFB;
 Delay_us(100);

 PORTD = 1<<0;
 PORTB = 0xFB;
 Delay_us(100);
 }
}
