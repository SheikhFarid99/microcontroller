#line 1 "C:/Users/samim/Desktop/Micro Controller Programming/Stepper Motor/Stepper_Motor.c"
void main() {
 TRISC = 0x00;
 PORTC = 0xFF;

 while(1)
 {
 PORTC = 0b00000011;
 Delay_ms(500);
 PORTC = 0b00000110;
 Delay_ms(500);
 PORTC = 0b00001100;
 Delay_ms(500);
 PORTC = 0b00001001;
 Delay_ms(500);
 }
}
