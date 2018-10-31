#ifndef BARGRAPH_H
#define BARGRAPH_H

	#include <avr/io.h>

	class Bargraph{
		private:
			bool isOn;
			unsigned char lastValue;
			void bargraphError();
			bool bargraphInit();
		public:
	
			void setValue(short int value);
			void display(bool display); //sets the bargraph on or off
				
			Bargraph();
	};

#endif
