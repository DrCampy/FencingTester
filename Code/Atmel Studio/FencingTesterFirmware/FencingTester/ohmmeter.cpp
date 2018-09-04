#include "ohmmeter.h"
#include <avr/io.h>

float Ohmmeter::getMeasurement(){
	
	uint16_t result = 0;
	float ohm;
	float volt;
	
	//Disabling power reduction on ADC
	PRR &= ~(1 << PRADC);
		
	//sets both Vref as AVcc and Input pin as A0
	ADMUX = 0;
	ADMUX |= (1<<REFS0); 
	
	//Sets the ADC clock prescaler to 128
	ADCSRA |= (1 << ADPS2)|(1 << ADPS1)|(1 << ADPS0); 
	
	//Enables the ADC
	ADCSRA |= (1 << ADEN);
	
	//Starts the conversion
	ADCSRA |= (1 << ADSC); 
	
	//While conversion not finished
	while((ADCSRA & (1 << ADIF)) != (1 << ADIF)); 
	
	//Gather result
	result |= ADCL;
	result |= ADCH << 8;
	
	//Shuts down ADC
	ADCSRA &= ~(1 << ADEN);
		
	//Enables power reduction on ADC
	PRR |= (1 << PRADC);
		
	//Converts the result to a 0-vSource result
	volt = ((float) result/1024)*vSource; 
	
	//V seen by AO
	volt /= (float) ampGain; 
	
	//Translates V into R
	ohm = (float) volt*rl/vSource; 
	
	//Second iteration for more precision
	//Because total resistance > rl
	ohm = (float) volt*(rl + ohm)/vSource;
	
	return ohm;
}

Ohmmeter::Ohmmeter(float gain, float rlOhm, int vSrc){
	//Setting variables
	ampGain = gain;
	rl = rlOhm;
	vSource = vSrc;
}