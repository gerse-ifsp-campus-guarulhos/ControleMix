/*
 * adcino.h
 *
 *  Created on: 27 de set de 2019
 *      Author: pibs
 */

#ifndef CORE_ADCINO_H_
#define CORE_ADCINO_H_

#include <core/protocol.h>

bool digitalRead(u8 pin);
void analogWrite(u8 pin, u16 value);
u16 analogRead(u8 pin);
bool readFlagADC(u8 pin);
void setPointADC(u8 pin, u16 value);
void clsFlagADC(u8 pin);

void adcReadloop(void);			// não usar

#endif /* CORE_ADCINO_H_ */
