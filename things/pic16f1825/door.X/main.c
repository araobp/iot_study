/*
 * Door controller
 * 
 * September 11th, 2017
 * 
 * Commands
 * 07: read Vout of hall sensor
 * 15<angle in degrees>: set servo motor's arm at the angle
 * 180: turn LED on
 * 181: turn LED off
 * 99: save the angle onto EEPROM
 */

#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include "mcc_generated_files/mcc.h"

uint16_t calc_duty(uint16_t angle) {
    // dutyValue: Min 35 - Max 155
    return (uint16_t)(155.0 - angle * 120.0 / 180.0);
}

void main(void)
{
    SYSTEM_Initialize();
    INTERRUPT_GlobalInterruptEnable();
    INTERRUPT_PeripheralInterruptEnable();

    uint16_t dutyValue;
    uint16_t angle;
    uint8_t c;
    uint8_t buf[32] = {'\0'};
    uint8_t cnt = 0;
    
    // read angle from EEPROM
    angle = (uint16_t)DATAEE_ReadByte(0);
    // printf("read angle from EEPROM: %d\n", angle);
    dutyValue = calc_duty(angle);
    EPWM2_LoadDutyValue(dutyValue);
            
    while (1)
    {
        do {
            c = EUSART_Read();
            if (c == '\n') {
                buf[cnt] = '\0';
                cnt = 0;
                if (!strncmp("99", buf, 1)) {  // writes angle onto EEPROM
                    DATAEE_WriteByte(0, (uint8_t)angle);
                    printf("%d\n", angle);
                } else if (!strncmp("07", buf, 2)) {  // hall sensor data
                    ADC_SelectChannel(channel_AN6);
                    ADC_StartConversion();
                    while(!ADC_IsConversionDone());
                    adc_result_t out = ADC_GetConversionResult();
                    printf("%d\n", out);
                } else if (!strncmp("15", buf, 2)) {  // servo motor control
                    angle = (uint16_t)atoi(&buf[2]);
                    dutyValue = calc_duty(angle);
                    EPWM2_LoadDutyValue(dutyValue);
                    printf("%d 0\n", dutyValue);
                } else if (!strncmp("18", buf, 2)) {  // LED control
                    if (!strncmp("0", &buf[2], 1)) {
                        LATAbits.LATA2 = 0;
                    } else {
                        LATAbits.LATA2 = 1;                        
                    }
                } else {
                    printf("1\n");
                }
            } else {
                buf[cnt++] = c;
            }
        } while (EUSART_DataReady);
    } 
}
