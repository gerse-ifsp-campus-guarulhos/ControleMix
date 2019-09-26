#include <protocol.h>
#include <stm32f10x_gpio.h>
#include <sysBase/adc.h>
#include <sysBase/gpio.h>
#include <sysBase/pwm.h>
#include <sysBase/utility_timer.h>


#define MINIMAL_TIME_MS		1	// tempo minimo do millis()
#define INIT_CONTER		0	// iniciar contagem do milles em zero
#define LED			GPIOC13
#define TIME_BLK		500	// tempo em miles segundos para piscadas do les 13

void blkLed(void);

int main(void){
	u16 pwm = 0;
	/* iniciar temporezadores */
	write_counter(INIT_CONTER);				// iniciar contador
	init_timer_interrupt(MINIMAL_TIME_MS);			// intervalo minimo do tempo para delay/millis
	init_rtc();						// iniiar relogio interno

	gpio_initAll(true);					// iniciar gpios sem dbg
	adc1_Init();						// iniciar adcs

	gpio_Mode(LED, GPIO_Mode_Out_PP);
	pwm_SetFreg(4096000, 4096);
	pwm_OnOffCh(PWM_CH1, true);
	pwm_OnOffCh(PWM_CH2, true);
	pwm_OnOffCh(PWM_CH3, true);
	pwm_OnOffCh(PWM_CH4, true);

	while(true){
		blkLed();
		pwm_SetCh(PWM_CH1, (pwm++ >= 4096)?(pwm=0):(pwm));
		pwm_SetCh(PWM_CH2, pwm);
		pwm_SetCh(PWM_CH3, pwm);
		pwm_SetCh(PWM_CH4, pwm);
		delay_ms(5);


	}

	return 0;
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
