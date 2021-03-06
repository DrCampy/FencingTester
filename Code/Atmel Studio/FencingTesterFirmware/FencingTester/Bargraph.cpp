﻿#include "Bargraph.h"
#include <util/twi.h>
#include <limits.h>

#define RED_PWM_RATIO 0.5
#define GRN_PWN_RATIO 0.5
#define ORG_PWM_RATIO 1.0

#define CHAR_RED_PWM (unsigned char)UCHAR_MAX*RED_PWM_RATIO
#define CHAR_GRN_PWM (unsigned char)UCHAR_MAX*GRN_PWN_RATIO
#define CHAR_ORG_PWM (unsigned char)UCHAR_MAX*ORG_PWM_RATIO

#define SLA_R 0b1110001
#define SLA_W 0b1110000

bool sendStart();
bool sendRStart();
bool sendStop();
bool sendSLA_W();
bool sendData(uint8_t data);

void Bargraph::setValue(short unsigned int value){
		/* Checks that value is in the input range*/
		if(value > 10){
			value = 10;
		}
		
		if(value == lastValue){
			return;
		}
		
		unsigned char LEDOUT0 = 0, LEDOUT1 = 0, LEDOUT2 = 0;
		for(unsigned char i = 1; i < 4; i++){
			LEDOUT0 <<= 2;
			if(i <= value){ //This led should be on
				LEDOUT0 += 0b10;
			}
			//This led should be off, do nothing
		}		
		for(unsigned char i = 5; i < 8; i++){
			LEDOUT1 <<= 2;
			if(i <= value){ //This led should be on
				LEDOUT1 += 0b10;
			}
			//This led should be off, do nothing
		}		
		for(unsigned char i = 9; i < 10; i++){
			LEDOUT2 <<= 2;
			if(i <= value){ //This led should be on
				LEDOUT2 += 0b10;
			}
			//This led should be off, do nothing
		}
		if(!sendStart()){
			bargraphError();
		}
		
		//Check which registers need to be sent
		//register 14h
		if(prevLEDOUT0 ^ LEDOUT0){
			if(!sendData(0b00010100)){
				bargraphError();
			}
			if(!sendData(LEDOUT0)){
				bargraphError();
			}
		}
		
		//register 15h
		if(prevLEDOUT1 ^ LEDOUT1){
			if(!sendData(0b00010101)){
				bargraphError();
			}
			if(!sendData(LEDOUT1)){
				bargraphError();
			}
		}
		//register 16h
		if(prevLEDOUT2 ^ LEDOUT2){
			if(!sendData(0b00010110)){
				bargraphError();
			}
			if(!sendData(LEDOUT2)){
				bargraphError();
			}
		}
		
		/*If we need to display the value, processes it*/
		if(isOn){
			
		}
		lastValue = value;
	}
		
void Bargraph::display(bool display){
	isOn = display;
	
	/*if the bargraph is off we keep it's value at 0 so it doesn't light up*/
	if(!isOn){ 
		setValue(0);
	}else{
		setValue(lastValue);
	}
}

		
Bargraph::Bargraph(){
	if(!bargraphInit()){
		bargraphError();
	}
	display(true);
	lastValue = 0;
	setValue(0);
}

void Bargraph::bargraphError(){
	//Do something;
	
}

bool Bargraph::bargraphInit(){
	//Enables TWI
	TWCR |= (1 << TWEN);
		
	//TODO what I2C clock divider/prescaler ?
		
	//MODE registers are kept at default values.
	if (!sendStart()){ //Starts communication
		return false;
	}
		
	if(!sendSLA_W()){ //Sends the slave adress with writing bit
		return false;
	}
		
	if(!sendData(0b10000010)){ //sends the control register's value for the device (100 for auto increment then 00010 for register PWM0)
		return false;
	}
		
	for(int i = 0; i < 5; i++){ //First 6 PWM registers are green values
		if(!sendData(CHAR_GRN_PWM)){
			return false;
		}
	}

	if(!sendData(CHAR_ORG_PWM)){ //next register is for the ORG led.
		return false;

	}
		
	for(int i = 0; i < 2; i++){ //Next 3 registers are for the red LEDs
		if(!sendData(CHAR_RED_PWM)){
			return false;
		}
	}
		
	if(!sendRStart()){
		return false;
	}
		
	if(!sendSLA_W()){
		return false;
	}
		
	//1C
	if(!sendData(0b00011100)){
		return false;
	}
		
	//IREF : see associated excel sheet
	if(!sendData(0b01111001)){ //TODO What to put in IREF
		return false;
	}
	if(!sendStop()){
		return false;
	}

	return true;
}

bool sendStart(){
	TWCR |= (1 << TWINT) | (1 << TWSTA); //Sends start condition
	while(!(TWCR & (1 << TWINT))); // waits for the TWINT flag set to check if start properly sent
	if (TW_STATUS != TW_START){
		return false;
	}
	return true;
}

bool sendRStart(){
	TWCR |= (1 << TWINT) | (1 << TWSTA); //Sends start condition
	while(!(TWCR & (1 << TWINT))); // waits for the TWINT flag set to check if start properly sent
	if (TW_STATUS != TW_REP_START){
		return false;
	}
	return true;
}

bool sendStop(){
	TWCR |= (1 << TWINT) | (1 << TWSTO); //Sends start condition
	return true;
}

bool sendSLA_W(){
	TWDR = SLA_W; //Loads the adress to write to slave device
	TWCR |= (1 << TWINT); //Tells TWI to proceed
			
	while(!(TWCR & (1 << TWINT))); // waits for the TWINT flag set to check if SLA_W properly sent
	if(TW_STATUS != TW_MT_SLA_ACK){ //Check that slave acknowledges it's adress
		return false;
	}
	return true;
}


bool sendData(uint8_t data){
	TWDR = data; //sets the Two Wire data register to the data we want to send
	
	TWCR |= (1 << TWINT); //Tells TWI to proceed
			
	while(!(TWCR & (1 << TWINT))); // waits for the TWINT flag set to check if data was properly sent
	if(TW_STATUS != TW_MT_SLA_ACK){ //Check that slave acknowledges the data
		return false;
	}
	return true;
}