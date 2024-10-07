void main() {
   TRISB = 0;
   while(1)
   {
      PORTB = 0x02;
      Delay_ms(1000);
      PORTB = 0x00;
      Delay_ms(1000);
   }
}