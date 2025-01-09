#include "platform.h"
#include "sleep.h"
#include "xgpio.h"
#include "xparameters.h"
#include <stdio.h>

#define ADD 0x1
#define SUB 0x2
#define MUL 0x4
#define DIV 0x8

int main() {
  XGpio A, B, result, op, overflow, zero, btn, led;
  u32 op_value;
  XGpio_Initialize(&A, XPAR_AXI_GPIO_A_BASEADDR);
  XGpio_Initialize(&B, XPAR_AXI_GPIO_B_BASEADDR);
  XGpio_Initialize(&result, XPAR_AXI_GPIO_RESULT_BASEADDR);
  XGpio_Initialize(&op, XPAR_AXI_GPIO_OP_BASEADDR);
  XGpio_Initialize(&overflow, XPAR_AXI_GPIO_OVERFLOW_BASEADDR);
  XGpio_Initialize(&zero, XPAR_AXI_GPIO_ZERO_BASEADDR);
  XGpio_Initialize(&btn, XPAR_AXI_GPIO_BTN_BASEADDR);
  XGpio_Initialize(&led, XPAR_AXI_GPIO_LED_BASEADDR);

  XGpio_SetDataDirection(&A, 1, 0x0); // iesire
  XGpio_SetDataDirection(&B, 1, 0x0);
  XGpio_SetDataDirection(&result, 1, 0xF); // intrare
  XGpio_SetDataDirection(&op, 1, 0x0);
  XGpio_SetDataDirection(&overflow, 1, 0xF);
  XGpio_SetDataDirection(&zero, 1, 0xF);
  XGpio_SetDataDirection(&btn, 1, 0xF);
  XGpio_SetDataDirection(&led, 1, 0x0);

  init_platform();
  xil_printf("Start platforma\n");

  u32 last_A = 0, last_B = 0, last_op = 0;
  int flag = 0;
  while (1) {
    u32 A_value, B_value, op_value, result_value, overflow_value, zero_value,
        led_state = 0;

    // xil_printf("Introduceti valoarea pentru A: ");
    // scanf("%d", &A_value);
    // xil_printf("Introduceti valoarea pentru B: ");
    // scanf("%d", &B_value);
    A_value = 10;
    B_value = 15;

    XGpio_DiscreteWrite(&A, 1, A_value);
    XGpio_DiscreteWrite(&B, 1, B_value);

    op_value = XGpio_DiscreteRead(&btn, 1) & 0b1111;
    XGpio_DiscreteWrite(&op, 1, op_value);

    result_value = XGpio_DiscreteRead(&result, 1);
    overflow_value = XGpio_DiscreteRead(&overflow, 1);
    zero_value = XGpio_DiscreteRead(&zero, 1);

    led_state = 0;
    if (overflow_value) {
      led_state = led_state | 0x1;
    }
    if (zero_value) {
      led_state = led_state | 0x2;
    }

    XGpio_DiscreteWrite(&led, 1, led_state);

    if (last_A != A_value || last_B != B_value || last_op != op_value) {
      switch (op_value) {
      case ADD:
        xil_printf("Adunare (%d + %d)\n", A_value, B_value);
        break;
      case SUB:
        xil_printf("Scadere (%d - %d)\n", A_value, B_value);
        break;
      case MUL:
        xil_printf("Inmultire (%d * %d)\n", A_value, B_value);
        break;
      case DIV:
        if (B_value != 0) {
          xil_printf("Impartire (%d / %d)\n", A_value, B_value);
        } else {
          xil_printf("Eroare: Impartire la zero!\n");
        }
        break;
      default:
        // xil_printf("Operatie necunoscuta!\n");
        break;
      }
      xil_printf("Rezultatul este: %d\n", result_value);
      xil_printf("Overflow: %d\n", overflow_value);
      xil_printf("Zero: %d\n", zero_value);

      // Actualizează valorile pentru a preveni afișarea repetată
      last_A = A_value;
      last_B = B_value;
      last_op = op_value;
    }

    usleep(20000);
  }

  cleanup_platform();
  return 0;
}
