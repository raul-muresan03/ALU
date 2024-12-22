#include "platform.h"
#include "sleep.h"
#include "xgpio.h"
#include "xparameters.h"
#include <stdio.h>

#define ADD 0b00
#define SUB 0b01
#define MUL 0b10
#define DIV 0b11

int main() {
  XGpio A, B, result, op, overflow, zero, btn,
      led; // doua structuri pentru pinii de intrare si de iesire

  XGpio_Initialize(&A, XPAR_AXI_GPIO_A_BASEADDR);
  XGpio_Initialize(&B, XPAR_AXI_GPIO_B_BASEADDR);
  XGpio_Initialize(&result, XPAR_AXI_GPIO_RESULT_BASEADDR);
  XGpio_Initialize(&op, XPAR_AXI_GPIO_OP_BASEADDR);
  XGpio_Initialize(&overflow, XPAR_AXI_GPIO_OVER_BASEADDR);
  XGpio_Initialize(&zero, XPAR_AXI_GPIO_ZERO_BASEADDR);
  XGpio_Initialize(&btn, XPAR_AXI_GPIO_BTN_BASEADDR);
  XGpio_Initialize(&led, XPAR_AXI_GPIO_LED_BASEADDR);

  XGpio_SetDataDirection(&A, 1, 0x0); // iesire
  XGpio_SetDataDirection(&B, 1, 0x0);
  XGpio_SetDataDirection(&result, 1, 0xF); // intrare
  XGpio_SetDataDirection(&op, 1, 0x0);
  XGpio_SetDataDirection(&overflow, 1, 0x0);
  XGpio_SetDataDirection(&zero, 1, 0x0);
  XGpio_SetDataDirection(&btn, 1, 0x0);
  XGpio_SetDataDirection(&led, 1, 0xF);

  init_platform();
  printf("Start platforma\n");

  while (1) {
    int A_value, B_value;
    int op;
    int result;
    int overflow;
    int zero;
    int led_state = 0;

    printf("Introduceti valoarea pentru A: ");
    scanf("%d", &A_value);
    printf("Introduceti valoarea pentru B: ");
    scanf("%d", &B_value);

    XGpio_DiscreteWrite(&A, 1, A_value);
    XGpio_DiscreteWrite(&B, 1, B_value);

    op = XGpio_DiscreteRead(&btn, 1) & 0b11;
    XGpio_DiscreteWrite(&op, 1, op);
    
    result = XGpio_DiscreteRead(&result, 1);
    overflow = XGpio_DiscreteRead(&overflow, 1);
    zero = XGpio_DiscreteRead(&zero, 1);

    led_state = 0;
    if (overflow) {
      led_state = led_state | 0b01;
    }
    if (zero) {
      led_state = led_state | 0b10;
    }

    XGpio_DiscreteWrite(&led, 1, led_state);

    printf("Operatia: ");
    switch (op) {
    case ADD:
      printf("Adunare (%d + %d)\n", A_value, B_value);
      break;
    case SUB:
      printf("Scadere (%d - %d)\n", A_value, B_value);
      break;
    case MUL:
      printf("Inmultire (%d * %d)\n", A_value, B_value);
      break;
    case DIV:
      if (B_value != 0)
        printf("Impartire (%d / %d)\n", A_value, B_value);
      else
        printf("Eroare: Impartire la zero!\n");
      break;
    default:
      printf("Operatie necunoscuta!\n");
      break;
    }

    printf("Rezultatul este: %d\n", result);
    printf("Overflow: %d\n", overflow);
    printf("Zero: %d\n", zero);

    usleep(200000);
  }

  cleanup_platform();
  return 0;
}
