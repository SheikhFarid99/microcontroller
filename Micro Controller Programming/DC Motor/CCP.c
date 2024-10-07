void main() {
    short duty = 0;
    TRISD.F0 = 0;
    TRISD.F1 = 0;
    
    TRISB.F0 = 1;
    TRISB.F1 = 1;
    
    PORTD.F0 = 1;
    PORTD.F1 = 0;
    
    PWM1_Init(1000);
    PWM1_Start();
    
    while(1)
    {
       if(PORTB.F0 == 1 && duty < 250)
       {
          Delay_ms(100);
          if(PORTB.F0 == 1 && duty < 250)
          {
              duty += 10;
              PWM1_Set_Duty(duty);
          }
       }
       
       if(PORTB.F1 == 1 && duty > 0)
       {
          Delay_ms(100);
          if(PORTB.F1 == 1 && duty > 0)
          {
              duty -= 10;
              PWM1_Set_Duty(duty);
          }
       }
    }
}