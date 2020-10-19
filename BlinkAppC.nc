configuration BlinkAppC
{
}
implementation
{
  components MainC, BlinkC, LedsC;
  BlinkC -> MainC.Boot;
  BlinkC.Leds -> LedsC;
  
  components new TimerMilliC() as Timer0;
  BlinkC.Timer0 -> Timer0;
    
  components PrintfC;
  components SerialStartC;
  

}
