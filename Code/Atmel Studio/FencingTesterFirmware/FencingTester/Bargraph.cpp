#include "Bargraph.h"

void Bargraph::setValue(short int value){
		/* Checks that value is in the input range*/
		if(value == 0){ //If we want to display an empty bgraph we need to otput to an unused pin, done with value = 10
			value = 11;
		}else if(value > 10){
			value = 10;
		}
		
		lastValue = value;
		/*If we need to display the value, processes it*/
		if(isOn){
			value--;
			/*S3*/
			if(value >> 3){
				PORTD |= (1 << PORTD5);
			}else{
				PORTD &= ~(1 << PORTD5);
			}
			/*S2*/
			if(value%8 >> 2){
				PORTD |= (1 << PORTD4);
			}else{
				PORTD &= ~(1 << PORTD4);
			}
			/*S1*/
			if(value%4 >> 1){
				PORTD |= (1 << PORTD3);
			}else{
				PORTD &= ~(1 << PORTD3);
			}
			/*S0*/
			if(value%2){
				PORTD |= (1 << PORTD2);
			}else{
				PORTD &= ~(1 << PORTD2);
			}
				
		}
	}
		
void Bargraph::display(bool display){
	isOn = display;
	if(!isOn){ //if the bargraph is off we keep it's value at 0 so it doesn't light up
		setValue(0);
	}else{
		setValue(lastValue);
	}
}
		
Bargraph::Bargraph(){
	/* Sets the output pins as outputs*/
	DDRD |= (1 << PORTD2) | (1 << PORTD3) | (1 << PORTD4) | (1 << PORTD5);
			
	/*Ensures that their logical level is LOW*/
	PORTD &= ~(1 << PORTD2) & ~(1 << PORTD3) & ~(1 << PORTD4) & ~(1 << PORTD5);		
			
	display(true);
	setValue(0);
}
	