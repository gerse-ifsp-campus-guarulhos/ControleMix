/*
 * config.h
 *
 *  Created on: 27 de set de 2019
 *      Author: pibs
 */

#include <sysBase/gpio.h>
#include <sysBase/pwm.h>
#include <sysBase/adc.h>
#include <sysBase/usartx.h>
#include <core/protocol.h>
#include <core/dbg.h>
#include <core/chMix.h>


#ifndef CONFIG_H_
#define CONFIG_H_

// config da comunicação serial e DBG
#define DEC			10		// base 10, conversão str -> int do dbg
#define BAUDRATE		19200		// velocidade
#define USART_DBG		USART1		// periferio
#define SERIAL			USART_DBG	// tradução


// config de inicialização do timer e rtc
#define MINIMAL_TIME_MS		1		// tempo minimo do millis()
#define INIT_CONTER		0		// iniciar contagem do milles em zero

// lede do pill blue
#define LED			GPIOC13		//
#define TIME_BLK		200		// tempo em miles segundos para piscadas do les 13


// entrada drvere
#define IN1 			GPIOB5
#define IN2 			GPIOB4
#define IN3 			GPIOB3
#define IN4 			GPIOA15		// TB É CH6

// saidas driver e PWM
#define OUT1 			PWM_CH4
#define OUT2 			PWM_CH3
#define OUT3 			PWM_CH2
#define OUT4 			PWM_CH1

// adc
#define AIN0			ADC_CH0
#define AIN1			ADC_CH1
#define AIN2			ADC_CH2
#define AIN3			ADC_CH3
#define AIN4			ADC_CH4
#define AIN5			ADC_CH5
#define AIN6			ADC_CH6
#define AIN7			ADC_CH7
#define AIN8			ADC_CH8
#define AIN9			ADC_CH9

// entrada do controle RS
#define CH1			GPIOA8
#define CH2			GPIOB15
#define CH3			GPIOB14
#define CH4			GPIOB13
#define CH5			GPIOB12
#define CH6			GPIOA15		// TB É IN4


void coreInit(void);
void blkLed(void);
void coreMonitor(void);
bool initIsOK(void);

#endif /* CONFIG_H_ */
