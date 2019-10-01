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
#include <core/protocol.h>
#include <sysBase/gpio.h>
#include <sysBase/utility_timer.h>

typedef struct{
	const u8 pin;
	u8 step;
	u16 timeCont;
	u16 update;
} chMix;



/* Private macro -------------------------------------------------------------*/
#define MAX_POINT	400	//
#define RESOLUTION	10	//
#define RISING_EDGE	0	//
#define FALLING_CONT	1	//
#define P_US		125	//

/* Private variables ---------------------------------------------------------*/
chMix ch1 = {CH1, RISING_EDGE, 0, 0};
chMix ch2 = {CH2, RISING_EDGE, 0, 0};
chMix ch3 = {CH3, RISING_EDGE, 0, 0};
chMix ch4 = {CH4, RISING_EDGE, 0, 0};
chMix ch5 = {CH5, RISING_EDGE, 0, 0};
chMix ch6 = {CH6, RISING_EDGE, 0, 0};

/* Private Functions ---------------------------------------------------------*/
void listenCH( chMix *chn);



/*****************************************************************************
 * inicia o contador para medir o tempo do pulso de  cada canal
******************************************************************************/
void initListenCH(void){
	set_counter(DIV_CLK_8KHZ);
}


/*****************************************************************************
 * func que fica em utility_timer.cpp na interrupção SysTick_Handler
******************************************************************************/
void loopListenCH(void){
	listenCH(&ch1);
	listenCH(&ch2);
	listenCH(&ch3);
	listenCH(&ch4);
	listenCH(&ch5);
	listenCH(&ch6);
}



/*****************************************************************************
 * retorna em micro segungos o periodo medido em um determinado canal
******************************************************************************/
u32 getTimeCH_us(u16 ch){
	switch(ch){					// alinhar chamada
		case CH1: ch = ch1.update; break;
		case CH2: ch = ch2.update; break;
		case CH3: ch = ch3.update; break;
		case CH4: ch = ch4.update; break;
		case CH5: ch = ch5.update; break;
		case CH6: ch = ch6.update; break;

		default: ch = 0; break;			// entrada invalida
	}
	return (ch*P_US);				// converter
}



/*########################################################################################################################################################*/
/*########################################################################################################################################################*/
/*########################################################################################################################################################*/
/* Private Functions ---------------------------------------------------------*/

/*****************************************************************************
 * cotrole de leituta dos canais
******************************************************************************/
void listenCH( chMix *chn){
	if(initIsOK() == false) return;				// fuga caso  não tenha configurado os perifericos

	switch(chn->step){
		case RISING_EDGE:				// esperar borda de subida
			if(gpio_Read(chn->pin)){
				chn->step = FALLING_CONT;	// prximo passo
				chn->timeCont = 0;		// limpar contador
			}
			break;

		case FALLING_CONT:				// esperar borda de decida
			if(gpio_Read(chn->pin)){
				chn->timeCont++;		// contar qunquanto a borda for alta
			} else{
				chn->step = RISING_EDGE;	// proximo passo
				chn->update = chn->timeCont;	// atualizar tempo
			}
			break;
	}
}


