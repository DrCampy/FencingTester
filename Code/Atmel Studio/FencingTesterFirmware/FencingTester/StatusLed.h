#ifndef STATUSLED_H
#define STATUSLED_H

#include <avr/io.h>

class StatusLed
	{
	public:
	enum ledColors{
		OFF = 0,
		RED,
		GREEN,
		ORANGE
	};
	StatusLed(volatile uint8_t *portG, int pinG, volatile uint8_t *portR, int pinR);
	void setColor(StatusLed::ledColors color);
	StatusLed::ledColors getColor();
		
	private:
	volatile uint8_t *portRed;
	volatile uint8_t *portGreen;
	int pinRed, pinGreen;
	StatusLed::ledColors set_color;
};
	

	
#endif