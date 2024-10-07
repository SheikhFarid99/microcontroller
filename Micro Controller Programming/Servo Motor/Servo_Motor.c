void rotate0()
{
    int i = 0;
    for(i = 0; i < 50; i++)
    {
         PORTD.F1 = 1;
         Delay_us(800);
         PORTD.F1 = 0;
         Delay_us(19200);
    }
}

void rotate90()
{
    int i = 0;
    for(i = 0; i < 50; i++)
    {
         PORTD.F1 = 1;
         Delay_us(1500);
         PORTD.F1 = 0;
         Delay_us(18500);
    }
}

void rotate180()
{
    int i = 0;
    for(i = 0; i < 50; i++)
    {
         PORTD.F1 = 1;
         Delay_us(2200);
         PORTD.F1 = 0;
         Delay_us(17800);
    }
}

void main() {
    TRISD.F1 = 0;
    PORTD.F1 = 0;

    while(1)
    {
        rotate0();
        Delay_ms(2000);
        rotate90();
        Delay_ms(2000);
        rotate180();
        Delay_ms(2000);
    }
}