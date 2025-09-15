/* Copyright 2017, DSI FCEIA UNR - Sistemas Digitales 2
 *    DSI: http://www.dsi.fceia.unr.edu.ar/
 * Copyright 2025, Prof. Ing. Daniel Márquez
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * 3. Neither the name of the copyright holder nor the names of its
 *    contributors may be used to endorse or promote products derived from this
 *    software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 */

/*==================[inclusions]=============================================*/

// Standard C Included Files
#include <string.h>
#include <stdio.h>
#include <stdbool.h>

// Project Included Files
#include "SD2_board.h"
#include "key.h"
#include "board.h"

/*==================[macros and definitions]=================================*/

//typedef struct  __attribute__((packed))
typedef struct
{
    uint8_t dato8;
    uint16_t dato16;
    uint8_t dato8_2;
    uint32_t dato32;
}myStruct_t;

/*==================[internal data declaration]==============================*/

static myStruct_t myStruct;
static uint8_t *p8;
static uint16_t *p16;
static uint32_t *p32;

/*==================[internal functions declaration]=========================*/

/*==================[internal functions definition]==========================*/

int main(void) {

    BOARD_InitDebugConsole();

    myStruct.dato8 = 0x12;
    myStruct.dato16 = 0x3456;
    myStruct.dato8_2 = 0x12;
    myStruct.dato32 = 0x789ABCDE;

    p8 = &myStruct.dato8;
    p16 = &myStruct.dato16;
    p32 = &myStruct.dato32;


    while (1)
    {
        *p8 = 0xAB;
        *p16 = 0xABCD;
        *p32 = 0xABCDEF12;
    }
}

