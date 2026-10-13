#include <stdio.h>
#include <unistd.h>
#include "io.h"
#include "system.h"
#include "alt_types.h"
#include "sys/alt_stdio.h"

#define CAP_DATA_REG    (1 * 4)

#define PWM_FREQ_REG    (0 * 4)
#define PWM_DUTY_REG    (1 * 4)
#define PWM_CTRL_REG    (2 * 4)

int main() {
    alt_putstr("Start\n");

    IOWR_32DIRECT(AVALON_PWM_0_BASE, PWM_FREQ_REG, 3000000);  // 60 ms
    IOWR_32DIRECT(AVALON_PWM_0_BASE, PWM_DUTY_REG, 600000);  // 12 ms
    IOWR_32DIRECT(AVALON_PWM_0_BASE, PWM_CTRL_REG, 3);        // enable + divide

    while (1) {
        alt_u32 data_raw = IORD_32DIRECT(AVALON_AQUISITION_CAP_0_BASE, CAP_DATA_REG);
        alt_u16 compass_angle = data_raw & 0x1FF;
        alt_u8  data_valid    = (data_raw >> 9) & 0x01;

        alt_u32 ctrl = IORD_32DIRECT(AVALON_AQUISITION_CAP_0_BASE, 0);
        if (ctrl == 1 || ctrl == 7) { // registre de controlle 1 = mono et appui  7 = continu
          if (data_valid) {
        	  alt_printf("Angle: %x\n", compass_angle);
          }
        }
        usleep(200000);
    }
    return 0;
}
