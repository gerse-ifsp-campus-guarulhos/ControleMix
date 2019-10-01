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
#include <stm32f10x_gpio.h>
#include <sysBase/adc.h>
#include <sysBase/gpio.h>
#include <sysBase/iwdg.h>
#include <sysBase/pwm.h>
#include <sysBase/usartx.h>
#include <sysBase/utility_timer.h>

/* Private macro -------------------------------------------------------------*/
#define AIN0_PIN		GPIOA0
#define AIN1_PIN		GPIOA1
#define AIN2_PIN		GPIOA2
#define AIN3_PIN		GPIOA3
#define AIN4_PIN		GPIOA4
#define AIN5_PIN		GPIOA5
#define AIN6_PIN		GPIOA6
#define AIN7_PIN		GPIOA7
#define AIN8_PIN		GPIOA8
#define AIN9_PIN		GPIOA9
/* Private variables ---------------------------------------------------------*/
bool initOK = false;
/* Private Functions ---------------------------------------------------------*/

/*******************************************************************************
 * inicializa as periferias do mcu que são utilizadas nessa placa
*******************************************************************************/
void coreInit(void){
//	iniciar temporezadores
	write_counter(INIT_CONTER);				// iniciar contador
	init_timer_interrupt(MINIMAL_TIME_MS);			// intervalo minimo do tempo para delay/millis
	init_rtc();

//	contador para controle rs
	initListenCH();


//	iniciar barramentos pinos e adc
	gpio_initAll(true);					// iniciar gpios sem dbg
	adc1_Init();						// iniciar adcs

//	configurar LED pill blue
	gpio_Mode(LED, GPIO_Mode_Out_PP);

//	entrada driver
	gpio_Mode(IN1, GPIO_Mode_IPU);
	gpio_Mode(IN2, GPIO_Mode_IPU);
	gpio_Mode(IN3, GPIO_Mode_IPU);
	gpio_Mode(IN4, GPIO_Mode_IPU);

//	saida drive, pwm e paarte do mix
	pwm_SetFreg(4096000, 4096);
	pwm_OnOffCh(OUT1, true);
	pwm_OnOffCh(OUT2, true);
	pwm_OnOffCh(OUT3, true);
	pwm_OnOffCh(OUT4, true);
	pwm_SetCh(OUT1, 0);
	pwm_SetCh(OUT2, 0);
	pwm_SetCh(OUT3, 0);
	pwm_SetCh(OUT4, 0);

//	adc
	gpio_Mode(AIN0_PIN, GPIO_Mode_AIN);
	gpio_Mode(AIN1_PIN, GPIO_Mode_AIN);
	gpio_Mode(AIN2_PIN, GPIO_Mode_AIN);
	gpio_Mode(AIN3_PIN, GPIO_Mode_AIN);
	gpio_Mode(AIN4_PIN, GPIO_Mode_AIN);
	gpio_Mode(AIN5_PIN, GPIO_Mode_AIN);
	gpio_Mode(AIN6_PIN, GPIO_Mode_AIN);
	gpio_Mode(AIN7_PIN, GPIO_Mode_AIN);
	gpio_Mode(AIN8_PIN, GPIO_Mode_AIN);
	gpio_Mode(AIN9_PIN, GPIO_Mode_AIN);

// 	entrada do controle RS
	gpio_Mode(CH1, GPIO_Mode_IPU);
	gpio_Mode(CH2, GPIO_Mode_IPU);
	gpio_Mode(CH3, GPIO_Mode_IPU);
	gpio_Mode(CH4, GPIO_Mode_IPU);
	gpio_Mode(CH5, GPIO_Mode_IPU);
	gpio_Mode(CH6, GPIO_Mode_IPU);

	/* iniciar cão de garda para previnir loops	*/
	/* infinitos ou trsas longas 			*/
	iwdg_Init(4095, IWDG_Prescaler_16);

//	iniciar serial
	usart1_Setup(BAUDRATE, false);
	usart_SendStrLn(USART_DBG, "INIT OK....");
	initOK = true;
}


/*******************************************************************************
 * pesca o led 13 em um sinal quadratico de TIME_BLK [ms], essa função serve
 * para debugar o codigo se algo travar o mcu por muito mais tempo que TIME_BLK
 * será percepitivel a olho nú
*******************************************************************************/
void blkLed(void){
	static u64 time;
	static bool blink;
	if(millis() > time){
		blink = not blink;
		gpio_Write(LED, blink);
		time  = millis() + TIME_BLK;
	}
}


/*******************************************************************************
 * monitor basico do sistema
*******************************************************************************/
void coreMonitor(void){
	delay_ms(1);					// estabilizar maximo 5 minimo 1
	iwdg_RstCont();					// cão de garda
}

/*******************************************************************************
 * sinaliza que as periferias foram ou não inicializadas
*******************************************************************************/
bool initIsOK(void){
	return initOK;
}


/*########################################################################################################################################################*/
/*########################################################################################################################################################*/
/*########################################################################################################################################################*/
/* Private Functions ---------------------------------------------------------*/



