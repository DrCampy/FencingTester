#ifndef MONITOR_H
#define MONITOR_H

#include <avr/io.h>
#include "StatusLed.h"

/* See Singleton for a one instance only class*/
class Monitor
{
	public:
	Monitor(StatusLed *led1, volatile uint8_t *portChan1, int pinChan1, \
			 StatusLed *led2, volatile uint8_t *portChan2, int pinChan2, \
			  StatusLed *led3, volatile uint8_t *portChan3, int pinChan3);
	void interrupt_routine();
	void channel1_timeout();
	void channel2_timeout();
	void channel3_timeout();
	
	private:
	enum stateMachine{
		RED,
		GREEN,
		OFF
	};
	enum level{
		HIGH,
		LOW
	};
	stateMachine stateM_1, stateM_2, stateM_3;
	StatusLed *l1, *l2, *l3;
	volatile uint8_t *portCh1, *portCh2, *portCh3;
	int pinCh1, pinCh2, pinCh3;
	volatile level levelCh1, levelCh2, levelCh3;
	volatile int timeoffCounter_1, timeoffCounter_2, timeoffCounter_3;
	
};

#endif