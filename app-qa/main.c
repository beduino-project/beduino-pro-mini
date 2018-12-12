/*
 * Copyright (C) 2018 Tristan Bruns
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <stdio.h>

#include "board.h"
#include "periph/gpio.h"

#include "xtimer.h"

gpio_t gpios[] = {
  // back row, left to right
  GPIO_PIN(PORT_B, 18),
  GPIO_PIN(PORT_B,  3),
  GPIO_PIN(PORT_B,  2),
  GPIO_PIN(PORT_B,  1),
  GPIO_PIN(PORT_C, 16),
  GPIO_PIN(PORT_C, 17),
  GPIO_PIN(PORT_C, 18),
  GPIO_PIN(PORT_C, 19),
  // front row, left to right
  GPIO_PIN(PORT_A, 16),
  GPIO_PIN(PORT_A, 17),
  GPIO_PIN(PORT_A, 18),
  GPIO_PIN(PORT_A, 19),
  GPIO_PIN(PORT_C, 4),
  GPIO_PIN(PORT_C, 3),
  GPIO_PIN(PORT_C, 2),
  GPIO_PIN(PORT_C, 1),
};
#define NUM_GPIOS (sizeof gpios / sizeof gpios[0])

#ifdef CLOCK_CORECLOCK
#define DELAY_SHORT         (CLOCK_CORECLOCK / 50)
#else
#define DELAY_SHORT         (500000UL)
#endif

void dumb_delay(uint32_t delay)
{
    for (uint32_t i = 0; i < delay; i++) {
        __asm__("nop");
    }
}

//! Signal test FAIL to human
void fail(void)
{
    while (1) {
        LED0_TOGGLE;
        dumb_delay(DELAY_SHORT);
        //xtimer_usleep(100);
    }
}

//! Signal test pass to human
void pass(void)
{
    while (1) {
        LED1_TOGGLE;
        dumb_delay(DELAY_SHORT);
    }
}

//! Flash LEDs for testing
void led_test(void)
{
    int i;

    for (i = 0; i < 10; i++) {
        LED0_TOGGLE;
        LED1_TOGGLE;
        dumb_delay(DELAY_SHORT);
    }
}

//! Check for ground shorts
void check_short_gnd(void)
{
    unsigned int i;

    for (i = 0; i < NUM_GPIOS; i++)
    {
        gpio_init(gpios[i], GPIO_IN_PU);
    }
    dumb_delay(DELAY_SHORT); // allow for pin capacitance
    for (i = 0; i < NUM_GPIOS; i++)
    {
        if (!gpio_read(gpios[i]))
            fail();
    }
}

//! Check for supply shorts
void check_short_vcc(void)
{
    unsigned int i;

    for (i = 0; i < NUM_GPIOS; i++)
    {
        gpio_init(gpios[i], GPIO_IN_PD);
    }
    dumb_delay(DELAY_SHORT); // allow for pin capacitance
    for (i = 0; i < NUM_GPIOS; i++)
    {
        if (gpio_read(gpios[i]))
            fail();
    }
}

//! Check for shorts between gpios
// This test configures GPIOs as outputs. Try to make sure this is safe
// beforehand!
void check_short_gpio(void)
{
    unsigned int i, j;

    // configure all GPIOs as inputs with pulldown
    for (i = 0; i < NUM_GPIOS; i++)
    {
        gpio_init(gpios[i], GPIO_IN_PD);
    }

    // drive each pin HIGH and check all other pins are still LOW
    for (i = 0; i < NUM_GPIOS; i++)
    {
        gpio_init(gpios[i], GPIO_OUT);
        gpio_set(gpios[i]);
        dumb_delay(DELAY_SHORT); // allow for pin capacitance

        for (j = 0; j < NUM_GPIOS; j++) {
            if (j != i && gpio_read(gpios[j])) {
                // stop driving the pin because it might be shorted to
                // other stuff, too. but use a pullup so the pin can be
                // found with a multimeter if it isn't.
                gpio_init(gpios[i], GPIO_IN_PU);

                fail();
            }
        }
        gpio_init(gpios[i], GPIO_IN_PD);
    }
}

//! Check for unconnected pads
// This needs user interaction.
void check_unconnected(void)
{
    // what am I even doing?
    unsigned int i;
    char state[NUM_GPIOS + 1];

    state[NUM_GPIOS] = '\0'; // tease the compiler

    for (i = 0; i < NUM_GPIOS; i++)
    {
        state[i] = '?';
        gpio_init(gpios[i], GPIO_IN_PD);
    }
    dumb_delay(DELAY_SHORT); // allow for pin capacitance

    puts("Gently pull up all GPIOs with TODO \\Ohms");
    printf("Status: %s\n", state);

    int cont = 1;
    while (cont) {
        cont = 0;
        for (i = 0; i < NUM_GPIOS; i++)
        {
            if (state[i] != '?')
                continue;
            cont = 1;

            if (gpio_read(gpios[i])) {
                state[i] = '+';
                printf("Status: %s\n", state);
            }
        }
    }

    puts("\nPass.");
}

void check_xtimer(void)
{
    uint32_t diff;
    volatile xtimer_ticks32_t a, b;

    a = xtimer_now();
    dumb_delay(DELAY_SHORT);
    b = xtimer_now();

    diff = xtimer_usec_from_ticks(xtimer_diff(b, a));

    if (diff < 139587 - 1000 || 139587 + 1000 < diff) {
        printf("xtimer test failed: %lu\n", diff);
        fail();
    }
}

int main(void)
{
    puts("Welcome to Beduino Pro Mini QA test app");

    led_test();
    check_xtimer();
    check_short_gnd();
    check_short_vcc();
    check_short_gpio();
    check_unconnected();

    pass();

    return 0;
}
