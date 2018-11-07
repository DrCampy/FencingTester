#ifndef BARGRAPH_H
#define BARGRAPH_H

	#include <avr/io.h>

	class Bargraph{
		private:
			bool isOn;
			unsigned char lastValue;
			unsigned char prevLEDOUT0, prevLEDOUT1, prevLEDOUT2;
			void bargraphError();
			bool bargraphInit();
		public:
	
			void setValue(short unsigned int value);
			void display(bool display); //sets the bargraph on or off
				
			Bargraph();
	};

#endif
