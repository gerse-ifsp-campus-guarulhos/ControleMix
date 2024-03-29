/*
 * dbg.cpp
 *
 *  Created on: 17 de mai de 2019
 *      Author: pibs
 */

#include <core/core.h>
#include <sysBase/usartx.h>
#include <core/protocol.h>
#include <stm32f10x_rtc.h>
#include <cstdlib>



/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
char bffRtc[11];

/* Private Functions ---------------------------------------------------------*/
void printRTC(void);
void printLabel(CCHR *label);


/*******************************************************************************
 * enviar informações para seria do dbg
 * printDbg(NULL, "reiniciando..."); 	-> [0000000042] sistema reiniciando...
 * printDbg("taxa", "555");		-> [0000000042] taxa: 555
********************************************************************************/
void printDbgSTR(CCHR *label, CCHR *str){
	printRTC();
	printLabel(label);
	usart_SendStrLn(USART_DBG, str);
}

/*******************************************************************************
 * enviar informações para seria do dbg
 * printDbg(NULL, 2565);		-> [0000000042] 2565
 * printDbg("taxa", 2565);		-> [0000000042] taxa: 2565
********************************************************************************/
void printDbgU32(CCHR *label, const u32 value){
	printRTC();
	printLabel(label);
	itoa(value, bffRtc, DEC);
	usart_SendStrLn(USART_DBG, bffRtc);
}


/*########################################################################################################################################################*/
/*########################################################################################################################################################*/
/*########################################################################################################################################################*/
/* Private Functions ---------------------------------------------------------*/

/*******************************************************************************
 * imprime para o dbg o valor do rtc
 * [0000000042]
********************************************************************************/
void printRTC(void){
	itoa(RTC_GetCounter(), bffRtc, DEC);
	zeroLeft(bffRtc, 10);
	usart_SendChr(USART_DBG, '[');
	usart_SendStr(USART_DBG, bffRtc);
	usart_SendChr(USART_DBG, ']');
	usart_SendChr(USART_DBG, ' ');
}


/*******************************************************************************
 * imprime para o dbg uma label se não for nula -> "label: "
********************************************************************************/
void printLabel(CCHR *label){
	if(label != NULL){
		usart_SendStr(USART_DBG, label);
		usart_SendChr(USART_DBG, ':');
		usart_SendChr(USART_DBG, ' ');
	}
}





