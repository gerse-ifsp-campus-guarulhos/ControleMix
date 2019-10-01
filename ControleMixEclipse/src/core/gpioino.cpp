// -------------------------------------------------------------------
//   Copyright (C) Pedro Igor B. S 2019
// -------------------------------------------------------------------
//
//   Licença: GNU GPL 2
// -------------------------------------------------------------------
//   This program is free software; you can redistribute it and/or
//   modify it under the terms of the GNU General Public License as
//   published by the Free Software Foundation; version 2 of the
//   License.
//
//   This program is distributed in the hope that it will be useful,
//   but WITHOUT ANY WARRANTY; without even the implied warranty of
//   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//   GNU General Public License for more details.
// -------------------------------------------------------------------


#include <core/core.h>

/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
bool ain[10];
u16 ainVlue[10];
/* Private Functions ---------------------------------------------------------*/
bool validREAD(u8 pin);
bool validWRITE(u8 pin);
bool validADC(u8 pin);


/*******************************************************************************
 * lé um pino analogico AIN0 a AIN9
*******************************************************************************/
u16 analogRead(u8 pin){
	if(validADC(pin) == false) return false;
	return adc1_Read(pin);
}


/*******************************************************************************
 * escreve em um pino pwm, entrada de 0 a 4096 1khz
*******************************************************************************/
void analogWrite(u8 pin, u16 value){
	if(validWRITE(pin) == false) return;
	pwm_SetCh(pin, value);
}


/*******************************************************************************
 * seta o valor minimo para levantar a fleg respectiva a leitura de valor de
 * um pino ADC esses calores são testado em 1khz (a cada 1ms) por uma
 * interupção por tempo isso permite maior robustes em momentos criticos
*******************************************************************************/
void setPointADC(u8 pin, u16 value){
	if(validADC(pin) == false) return;
	ainVlue[pin] = value;
}


/*******************************************************************************
 * lé a fleg espectiva ao AIN
*******************************************************************************/
bool readFlagADC(u8 pin){
	if(validADC(pin) == false) return false;
	return ain[pin];
}


/*******************************************************************************
 * limpa a fleg espectiva ao AIN, se aentrada for diferente de AIN valido todas
 * as flags vão ser limpas
*******************************************************************************/
void clsFlagADC(u8 pin){
	switch(pin){
		case AIN0 ... AIN9:
			ain[pin] = false;
			break;
		default:
			for (u8 adcPin = AIN0; adcPin <= AIN9; adcPin++) {
				ain[adcPin] = false;
			}
			break;
	}
}


/*******************************************************************************
 * chamada apenas em utility_timer.cpp na interrupção TIM2_IRQHandler que
 * comtrola tambem o delay_ms e mills
*******************************************************************************/
void adcReadloop(void){
	if(initIsOK() == false) return;
	for(u8 adcPin = AIN0; adcPin <= AIN9; adcPin++){
		if(analogRead(adcPin) >= ainVlue[adcPin]){
			ain[adcPin] = true;
		}
	}
}


/*******************************************************************************
 * lé um pino analogico AIN0 a AIN9
*******************************************************************************/
bool digitalRead(u8 pin){
	if(validREAD(pin) == false) return false;
	return gpio_Read(pin);
}




/*########################################################################################################################################################*/
/*########################################################################################################################################################*/
/*########################################################################################################################################################*/
/* Private Functions ---------------------------------------------------------*/


/*******************************************************************************
 * verifica se o pino de entrada é valido
*******************************************************************************/
bool validREAD(u8 pin){
	switch(pin){		// ver entrada validas
		case IN1:
		case IN2:
		case IN3:
		case IN4:
		case CH1:
		case CH2:
		case CH3:
		case CH4:
		case CH5:
		//case CH6:	// CH6 é igual /comum a IN4
			return true;
		default:
			return false;
	}
}

/*******************************************************************************
 * verifica se o pino de saida é valido (PWMS)
*******************************************************************************/
bool validWRITE(u8 pin){
	switch(pin){		// ver saida validas
		case OUT1:
		case OUT2:
		case OUT3:
		case OUT4:
			return true;
		default:
			return false;
	}
}

/*******************************************************************************
 * verifica se o pino ADC é validada
*******************************************************************************/
bool validADC(u8 pin){
	switch(pin){
		case AIN0 ... AIN9:
			return true;
		default:
			return false;
	}
}


