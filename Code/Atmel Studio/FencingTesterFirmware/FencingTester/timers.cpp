/*
 * CPPFile1.cpp
 *
 * Created: 01/06/2017 18:15:28
 *  Author: Morgan Diepart
 */ 

#include "timers.h"
#include <avr/interrupt.h>

void set_timer0(){
	
	//Disables the timer with the power management options
	//PRR |= (1 << PRTIM0);
		
	//Disables interrupts while we mess with them
	unsigned char sreg;
	sreg = SREG;
	cli();
	
	//Ensures 0C0A and OC0B are disconnected
	TCCR0A &= ~(1 << COM0A1) & ~(1 << COM0A0) & ~(1 << COM0B1) & ~(1 << COM0B0); 
	
	// Set timer to mode 2 (CTC)
	TCCR0A &= ~(1 << WGM00);
	TCCR0A |= (1 << WGM01);
	TCCR0B &= ~(1 << WGM02);
	
	//Setting the prescaler to 0 disables the timer
	TCCR0B &= ~(1 << CS02) & ~(1 << CS01) & ~(1 << CS00);
	
	//Enables interrupt when timer compares to OCR0A and disables OCR0B and overflow
	TIMSK0 &= ~(1 << OCIE0B) & ~(1 << TOIE0);
	TIMSK0 |= (1 << OCIE0A);
	
	//Sets the top value at 78 counts. At that value it throws an interrupt
	OCR0A = 78; //78 counts = 5ms
	
	//Ensures the timer begins at 0
	TCNT0 = 0;
	
	//Sets interrupt back to what they were
	SREG = sreg;		
}

void enable_timer0(){
	//Ensures the counters begins at 0
	TCNT0 = 0;
	
	//Sets the prescaler on FCPU/1024 to start it
	TCCR0B|=(1<<CS02)|(1<<CS00);
	TCCR0B &= ~(1 << CS01);
}

void disable_timer0(){
	//Setting the prescaler to 0 disables the timer
	TCCR0B &= ~(1 << CS02) & ~(1 << CS01) & ~(1 << CS00);
}

void set_timer1(){
	
	//Disables the timer with the power management options
	//PRR |= (1 << PRTIM1);
	
	//Disables interrupts while we mess with them
	unsigned char sreg;
	sreg = SREG;
	cli();
	
	//Ensures 0C1A and OC1B are disconnected
	TCCR1A &= ~(1 << COM1A1) & ~(1 << COM1A0) & ~(1 << COM1B1) & ~(1 << COM1B0);
	
	// Set timer to mode 4 (CTC)
	TCCR1A &= ~(1 << WGM11) & ~(1 << WGM10);
	TCCR1B &= ~(1 << WGM13);
	TCCR1B |= (1 << WGM12);
	
	//ensures unused functionalities are disabled (Noise cancelation and edge selection)
	TCCR1B &= ~(1 << ICNC1) & ~(1 << ICES1);
	
	//Sets the prescaler on 0 to disable counter
	TCCR1B &= ~(1 << CS12) & ~(1 << CS11) & ~(1 << CS10);
	
	//Enables interrupt when timer compares to OCR0A and disables OCR1B, input capture and overflow
	TIMSK1 &= ~(1 << OCIE1B) & ~(1 << TOIE1) & ~(1 << ICIE1);
	TIMSK1 |= (1 << OCIE1A);
	
	//Sets the top value at 78 counts. At that value it throws an interrupt
	OCR1AH = 0;
	OCR1AL = 78; //78 counts = 5ms
	
	//Ensures the timer begins at 0
	TCNT1H = 0;
	TCNT1L = 0;

	//Sets interrupt back to what they were
	SREG = sreg;
}

void enable_timer1(){
	//Ensures the counters begins at 0
	TCNT1H = 0;
	TCNT1L = 0;
	
	//Sets the prescaler on FCPU/1024
	TCCR1B |= (1 << CS12) | (1 << CS10);
	TCCR1B &= ~(1 << CS11);
}

void disable_timer1(){
	//Disables the timer
	//PRR |= (1 << PRTIM1);
	TCCR1B &= ~(1 << CS12) & ~(1 << CS11) & ~(1 << CS10);

}

void set_timer2(){
	//Disables the timer with the power management options
	//PRR |= (1 << PRTIM2);
		
	//Disables interrupts while we mess with them
	unsigned char sreg;
	sreg = SREG;
	cli();
		
	//Ensures 0C0A and OC0B are disconnected
	TCCR2A &= ~(1 << COM2A1) & ~(1 << COM2A0) & ~(1 << COM2B1) & ~(1 << COM2B0);
		
	// Set timer to mode 2 (CTC)
	TCCR2A &= ~(1 << WGM20);
	TCCR2A |= (1 << WGM21);
	TCCR2B &= ~(1 << WGM22);
		
	//Sets the prescaler on 0
	TCCR2B &= ~(1<<CS22) & ~(1 << CS21) & ~(1<<CS20);
		
	//Enables interrupt when timer compares to OCR0A and disables OCR0B and overflow
	TIMSK2 &= ~(1 << OCIE2B) & ~(1 << TOIE2);
	TIMSK2 |= (1 << OCIE2A);
		
	//Sets the top value at 78 counts. At that value it throws an interrupt
	OCR2A = 78; //78 counts = 5ms
		
	//Managing asynchronous settings
	ASSR &= ~(1 << AS2);
		
	//Ensures the timer begins at 0
	TCNT2 = 0;
		
	//Sets interrupt back to what they were
	SREG = sreg;
}

void enable_timer2(){
	//Ensures the counters begins at 0
	TCNT2 = 0;
	
	//Sets the prescaler on FCPU/1024
	TCCR2B |= (1 << CS22) | (1 << CS21) | (1 << CS20);
}

void disable_timer2(){
	//Disables the timer
	TCCR2B &= ~(1<<CS22) & ~(1 << CS21) & ~(1<<CS20);
}