#ifndef CHANNEL_H
#define CHANNEL_H
	
	#include <avr/io.h>
	#include "StatusLed.h"
	
	class Channel
	{
	private:
		enum state_machine{
			RED,
			GREEN,
			OFF
		};
		StatusLed *statLed;
		state_machine state;

	public:
		enum notification{
			RISING_EDGE,
			FALLING_EDGE,
			TIMEOUT
		};
		
		Channel(StatusLed *statLed);
		void notify(Channel::notification);
	};
	
#endif