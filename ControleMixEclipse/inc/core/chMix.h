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


#ifndef CHMIX_H_
#define CHMIX_H_

#include <stddef.h>
#include <stdint.h>


void initListenCH(void);
void loopListenCH(void);
u32 getTimeCH_us(u16 ch);


#endif /* CHMIX_H_ */
