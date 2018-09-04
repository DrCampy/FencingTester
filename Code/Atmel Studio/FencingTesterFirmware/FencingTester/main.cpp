/*
 * FencingTester.cpp
 *
 * Created: 15/02/2017 17:55:41
 * Author : Morgan Diepart
 */ 
#define F_CPU 16000000UL // 16MHz

#include <avr/io.h>
#include <math.h>
#include <util/delay.h>
#include <avr/interrupt.h>

#include "ohmmeter.h"
#include "Bargraph.h"
#include "StatusLed.h"
#include "Monitor.h"

float remap(float in, float min_in, float max_in, float min_out, float max_out);

/* Creating LEDs for the 3 channels */
StatusLed ledCh3 = StatusLed(&PORTB, PORTB0, &PORTB, PORTB1);
StatusLed ledCh2 = StatusLed(&PORTB, PORTB2, &PORTB, PORTB3);
StatusLed ledCh1 = StatusLed(&PORTB, PORTB4, &PORTB, PORTB5);

/*Creating the monitor*/
Monitor mon = Monitor(&ledCh1, &PORTC, PORTC1, \
					   &ledCh2, &PORTC, PORTC2, \
						&ledCh3, &PORTC, PORTC3 );


ISR(PCINT1_vect){
	mon.interrupt_routine();
}
	
ISR(TIMER0_COMPA_vect){
	mon.channel1_timeout();
}
	
ISR(TIMER1_COMPA_vect){
	mon.channel2_timeout();
}
	
ISR(TIMER2_COMPA_vect){
	mon.channel3_timeout();
}

int main(void)
{
	/*initializations*/
	uint16_t battery_level_adc = 0;
	float battery_voltage = 0;
	Bargraph bgraph = Bargraph();
	Ohmmeter ohmmetre = Ohmmeter(63, 299.25, 5); // Amp_gain = 63, Rl = 299.25 ohm, Vsource = 5V

	/*Light up all leds and measures battery voltage*/
	StatusLed::ledColors colorCh1 = ledCh1.getColor(),\
						  colorCh2 = ledCh2.getColor(),
					       colorCh3 = ledCh3.getColor();
	ledCh1.setColor(StatusLed::ORANGE);
	ledCh2.setColor(StatusLed::ORANGE);
	ledCh3.setColor(StatusLed::ORANGE);
	bgraph.setValue(10);
	
	_delay_ms(250);
	
	//Disabling power reduction on ADC
	PRR &= ~(1 << PRADC);
	
	//Sets Vref as AVcc ans input pin as A4
	ADMUX |= (1 << REFS0) | (1 << MUX2); 
	
	//Sets the ADC clock prescaler to 128
	ADCSRA |= (1 << ADPS2)|(1 << ADPS1)|(1 << ADPS0);

	//Disabling power reduction on ADC
	PRR &= ~(1 << PRADC);
	
	//Enables the ADC
	ADCSRA |= (1 << ADEN);
	
	//Starts the conversion
	ADCSRA |= (1 << ADSC);
	
	//While conversion not finished
	while((ADCSRA & (1 << ADIF)) == 0);

	bgraph.setValue(0);
	_delay_ms(250);
	ledCh1.setColor(colorCh1);
	ledCh2.setColor(colorCh2);
	ledCh3.setColor(colorCh3);
	
	//Gather result
	battery_level_adc |= ADCL;
	battery_level_adc |= ADCH << 8;
	
	//Gets the battery voltage
	battery_voltage = ((float) battery_level_adc/1024.0)*5.0;
	

		
	//Displays battery voltage on the bargraph
	bgraph.setValue(round(remap(battery_voltage, 3, 4.2, 1, 10)));
	_delay_ms(1000);
	bgraph.setValue(0);
	_delay_ms(500);


	//Setting the DUT-select pins
	//Input
	DDRD &= ~(1 << PORTD6) & ~(1 << PORTD7);
	//Pull-up
	PORTD |= (1 << PORTD6) | (1 << PORTD7);

	// Enables pin changes interrupt on PCINT[14:8]
	PCICR |= (1 << PCIE1);
	//Sets the mask to enable interrupts on PCINT 9 10 and 11
	PCMSK1 |= (1 << PCINT9) | (1 << PCINT10) | (1 << PCINT11);
	sei();
	
	
	
	float resistance = 0;
	while (1)
	{
		resistance = ohmmetre.getMeasurement();
		if((PIND & (1 << PORTD7)) != 0){ // display
		
			if(resistance != 0){
				if((PIND & (1 << PORTD6)) != 0){//1 Ohm mode
					resistance = floor(remap(resistance, 0, 2, 1, 8));
					bgraph.setValue(resistance);
				}else{ //2 Ohm mode
					resistance = floor(remap(resistance, 0, 1, 1, 8));
					bgraph.setValue(resistance);
				}
			}else{
				bgraph.setValue(-1);
			}
		}else{
			bgraph.setValue(-1);
		}
	}
}


float remap (float in, float min_in, float max_in, float min_out, float max_out){
	float alpha = (min_out - max_out)/(min_in - max_in);
	float beta = max_out - alpha * max_in;
	
	return alpha*in + beta;
}
