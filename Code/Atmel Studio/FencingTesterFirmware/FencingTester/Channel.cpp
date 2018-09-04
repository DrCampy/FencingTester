#include "Channel.h"
#include <avr/io.h>

Channel::Channel(StatusLed *statusLed){

	*statLed = *statusLed;

}

void Channel::notify(Channel::notification){
	
};

