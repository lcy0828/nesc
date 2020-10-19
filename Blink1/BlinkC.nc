#include "Timer.h"
#include "printf.h"
module BlinkC @safe()
{
  uses interface Timer<TMilli> as Timer0;
  uses interface Leds;
  uses interface Boot;
}
implementation
{
  uint8_t i;
  uint8_t p;
  uint8_t cout = 0;
  uint32_t ll1 ;
 event void Boot.booted()
  {
    p = TOS_NODE_ID;
    call Timer0.startOneShot( p*1000 );
  }
  
  event void Timer0.fired()
  {
  //TestNetworkMsg msg;

  //msg->nodeid = TOS_NODE_ID;
  i = TOS_NODE_ID;
  cout++;
  ll1  = Timer
  printf("This is %u  %u num\n",i,cout);
  printfflush();
  }

  
}

