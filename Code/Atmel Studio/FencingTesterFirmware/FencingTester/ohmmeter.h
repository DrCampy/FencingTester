#ifndef OHMMETER_H
#define OHMMETER_H

	#include <avr/io.h>
		
	class Ohmmeter
	{
	public:
		Ohmmeter(float gain, float rcOhm, int VSource);
		~Ohmmeter();
		float getMeasurement();
	protected:
		float ampGain;
		float rl;
		int vSource;
	private:
	};
	
#endif