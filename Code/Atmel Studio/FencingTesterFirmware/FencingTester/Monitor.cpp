#include <avr/interrupt.h>
#include "Monitor.h"
#include "timers.h"

Monitor::Monitor(StatusLed *led1, volatile uint8_t *portChan1, int pinChan1, \
				  StatusLed *led2, volatile uint8_t *portChan2, int pinChan2, \
				   StatusLed *led3, volatile uint8_t *portChan3, int pinChan3){
	l1 = led1;
	l2 = led2;
	l3 = led3;
	
	portCh1 = portChan1;
	pinCh1 = pinChan1;
	
	portCh2 = portChan2;
	pinCh2 = pinChan2;
	
	portCh3 = portChan3;
	pinCh3 = pinChan3;

	/* Sets the listening pins as inputs*/
	*(portChan1-1) &= ~(1 << pinCh1);
	*(portChan2-1) &= ~(1 << pinCh2);
	*(portChan3-1) &= ~(1 << pinCh3);
	
	/* Sets the levels */
	unsigned char sreg;
	sreg = SREG;
	cli();
	
	if( ( *(portCh1-2) & (1 << pinCh1) ) != 0){
		levelCh1 = HIGH;
		stateM_1 = Monitor::OFF;
		l1->setColor(StatusLed::OFF);

	}else{
		levelCh1 = LOW;
		stateM_1 = Monitor::GREEN;
		l1->setColor(StatusLed::GREEN);
	}
	
	if( ( *(portCh2-2) & (1 << pinCh2) ) != 0){
		levelCh2 = HIGH;
		stateM_2 = Monitor::OFF;
		l2->setColor(StatusLed::OFF);
	}else{
		levelCh2 = LOW;
		stateM_2 = Monitor::GREEN;
		l2->setColor(StatusLed::GREEN);
	}
	
	if( ( *(portCh3-2) & (1 << pinCh3) ) != 0){
		levelCh3 = HIGH;
		stateM_3 = Monitor::OFF;
		l3->setColor(StatusLed::OFF);
	}else{
		levelCh3 = LOW;
		stateM_3 = Monitor::GREEN;
		l3->setColor(StatusLed::GREEN);
	}
	
	//Sets the timers
	set_timer0();
	set_timer1();
	set_timer2();
	
	timeoffCounter_1 = timeoffCounter_2 = timeoffCounter_3 = 0;
	SREG = sreg;
}

void Monitor::interrupt_routine(){
	
	//Channel 1 (AA')
	if( ( ( *(portCh1-2) & (1 << pinCh1) ) != 0) && levelCh1 ==  LOW){
		//RISING_EDGE = wire disconnected
		levelCh1 = HIGH;
		
		if(stateM_1 == GREEN){
			enable_timer0();
		}else if(stateM_1 == RED){
			enable_timer0();
		}else if(stateM_1 == OFF){
			disable_timer0();
		}
		
	}else if( ( ( *(portCh1-2) & (1 << pinCh1) ) == 0) && levelCh1 == HIGH){
		//FALLING EDGE = wire connected
		levelCh1 = LOW;
		
		if(stateM_1 == GREEN){
			//Interrupt less than 5 ms.
			//Disables the timer
			disable_timer0();
		}else if(stateM_1 == RED){
			//resets the switch-to-off counter
			timeoffCounter_1 = 0;
			
			//Disable Timer
			disable_timer0();
		}else if(stateM_1 == OFF){
			//enables timer (to count up to timeoffCounter = 100) before enabling counter
			timeoffCounter_1 = 0;
			enable_timer0();
		
		}
	}
	
	//Channel 2 (BB')
	if( ( ( *(portCh2-2) & (1 << pinCh2) ) != 0) && levelCh2 ==  LOW){
		//RISING_EDGE = wire disconnected
		levelCh2 = HIGH;
		
		if(stateM_2 == GREEN){
			enable_timer1();
		}else if(stateM_2 == RED){
			enable_timer1();
		}else if(stateM_2 == OFF){
			disable_timer1();
		}

	}else if( ( ( *(portCh2-2) & (1 << pinCh2) ) == 0) && levelCh2 == HIGH){
		//FALLING EDGE = wire connected
		levelCh2 = LOW;
		
		if(stateM_2 == GREEN){
			//Interrupt less than 5 ms.
			//Disables the timer
			disable_timer1();
		}else if(stateM_2 == RED){
			//resets the switch-to-off counter
			timeoffCounter_2 = 0;
			
			//Disable Timer
			disable_timer1();
		}else if(stateM_2 == OFF){
			//enables timer (to count up to timeoffCounter = 100) before enabling counter
			timeoffCounter_2 = 0;
			enable_timer1();	
		}
	}
	
	//Channel3 (CC')
	if( ( ( *(portCh3-2) & (1 << pinCh3) ) != 0) && levelCh3 ==  LOW){
		//RISING_EDGE = wire disconnected
		levelCh3 = HIGH;
		
		if(stateM_3 == GREEN){
			enable_timer2();
		}else if(stateM_3 == RED){
			enable_timer2();
		}else if(stateM_3 == OFF){
			disable_timer2();
		}

	}else if( ( ( *(portCh3-2) & (1 << pinCh3) ) == 0) && levelCh3 == HIGH){
		//FALLING EDGE = wire connected
		levelCh3 = LOW;
		
		if(stateM_3 == GREEN){
			//Interrupt less than 5 ms.
			//Disables the timer
			disable_timer2();
		}else if(stateM_3 == RED){
			//resets the switch-to-off counter
			timeoffCounter_3 = 0;
			
			//Disable Timer
			disable_timer2();
		}else if(stateM_3 == OFF){
			//enables timer (to count up to timeoffCounter = 100) before enabling counter
			timeoffCounter_3 = 0;
			enable_timer2();
		}
	}

}

void Monitor::channel1_timeout(){
	//Signal was interrupted for more than 5ms for the first time. Lighting the led red
	if(stateM_1 == GREEN){
		stateM_1 = RED;
		l1->setColor(StatusLed::RED);
		timeoffCounter_1 = 0;
	}
	
	//Increments the counter of timeoffs
	timeoffCounter_1++;
	
	if(timeoffCounter_1 >= 100 && stateM_1 == RED){ 
		//Disconnected for more than 0.5s
		stateM_1 = OFF;
		l1->setColor(StatusLed::OFF);
		timeoffCounter_1 = 0;
		
		//Disables Timer
		disable_timer0();
	}else if(timeoffCounter_1 >= 100 && stateM_1 == OFF){ 
		//Connected. Waited 0.5s before turning to green
		stateM_1 = GREEN;
		l1->setColor(StatusLed::GREEN);
		timeoffCounter_1 = 0;
		
		//Disables counter
		disable_timer0();
	}
}

void Monitor::channel2_timeout(){
	//Signal was interrupted for more than 5ms for the first time. Lighting the led red
	if(stateM_2 == GREEN){
		stateM_2 = RED;
		l2->setColor(StatusLed::RED);
		timeoffCounter_2 = 0;
	}
	
	//Increments the counter of timeoffs
	timeoffCounter_2++;
	
	if(timeoffCounter_2 >= 100 && stateM_2 == RED){
		//Disconnected for more than 0.5s
		stateM_2 = OFF;
		l2->setColor(StatusLed::OFF);
		timeoffCounter_2 = 0;
		
		//Disables Timer
		disable_timer1();
		}else if(timeoffCounter_2 >= 100 && stateM_2 == OFF){
		//Connected. Waited 0.5s before turning to green
		stateM_2 = GREEN;
		l2->setColor(StatusLed::GREEN);
		timeoffCounter_2 = 0;
		
		//Disables counter
		disable_timer1();
	}
}

void Monitor::channel3_timeout(){
	//Signal was interrupted for more than 5ms for the first time. Lighting the led red
	if(stateM_3 == GREEN){
		stateM_3 = RED;
		l3->setColor(StatusLed::RED);
		timeoffCounter_3 = 0;
	}
	
	//Increments the counter of timeoffs
	timeoffCounter_3++;
	
	if(timeoffCounter_3 >= 100 && stateM_3 == RED){
		//Disconnected for more than 0.5s
		stateM_3 = OFF;
		l3->setColor(StatusLed::OFF);
		timeoffCounter_3 = 0;
		
		//Disables Timer
		disable_timer2();
		}else if(timeoffCounter_3 >= 100 && stateM_3 == OFF){
		//Connected. Waited 0.5s before turning to green
		stateM_3 = GREEN;
		l3->setColor(StatusLed::GREEN);
		timeoffCounter_3 = 0;
		
		//Disables counter
		disable_timer2();
	}
}