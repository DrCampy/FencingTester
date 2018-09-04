#include "StatusLed.h"
#include <avr/io.h>

StatusLed::StatusLed(volatile uint8_t *portG, int pinG, volatile uint8_t *portR, int pinR){
	
	portRed = portR;
	portGreen = portG;
	
	pinRed = pinR;
	pinGreen = pinG;
	
	//Sets pins as output
	*(portRed-1) |= (1 << pinRed);
	*(portGreen-1) |= (1 << pinGreen);
	
	setColor(OFF);
}

void StatusLed::setColor(ledColors color){
	this->set_color = color;
	if (color == OFF){/*OFF*/
		*portRed &= ~(1 << pinRed);
		*portGreen &= ~(1 << pinGreen);
	}else if (color == RED){/*RED*/
		*portRed |= (1 << pinRed);
		*portGreen &= ~(1 << pinGreen);
	}else if (color == GREEN){/*GREEN*/
		*portRed &= ~(1 << pinRed);
		*portGreen |= (1 << pinGreen);
	}else if (color == ORANGE){/*ORANGE*/
		*portRed |= (1 << pinRed);
		*portGreen |= (1 << pinGreen);
	}
}

StatusLed::ledColors StatusLed::getColor(){
	return this->set_color;
}