# ULX4M-EMC

To enter bootloader hold middle button (BTN2) and plug USB to computer

First 3 LEDs will be ON - now device is in bootloader, and we will deliver it like that to end customer.

For 12F ULX4M-LS we have used simple "noise" bitstream

Bitstream is generating 50MHz, 100MHz, 200MHz, 300MHz and push that signal to LEDs 0-3

It will also have counter from those frequencies on LEDs 4-7

sudo openFPGALoader -b ulx3s_dfu bit/ulx4m-ls_12f_blinktest.bit

## Testing results

![EMI1](/img/EMI1.png)

![EMI2](/img/EMI2.png)

![Uncerainty](/img/EMI-uncerainty.png)

![Results](/img/EMI_results.png)
