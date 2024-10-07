#line 1 "H:/4.2/mc/Micro Controller Programming/Relay/Relay.c"
void main() {
 TRISD.F0 = 0;
 PORTD.F0 = 0;

 while(1)
 {
 PORTD.F0 = 1;
 Delay_ms(1000);
 PORTD.F0 = 0;
 Delay_ms(1000);
 }
}
