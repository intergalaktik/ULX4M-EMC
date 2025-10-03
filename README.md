# ULX4M-EMC

To enter bootloader hold middle button (BTN2) and plug USB to computer

First 3 LEDs will be ON - now device is in bootloader, and we will deliver it like that to end customer.

For LS 12F version load noise bitstream 

For 12F ULX4M-LS

sudo openFPGALoader -b ulx3s_dfu bit/ulx4m-ls_12f_blinktest.bit

For LD version - check FPGA is it just 85F, UM or UM5G

sudo openFPGALoader -b ulx3s_dfu bit/ulx4m-ld_85f_memtest.bit

sudo openFPGALoader -b ulx3s_dfu bit/ulx4m-ld_5g-85f_memtest.bit

sudo openFPGALoader -b ulx3s_dfu bit/ulx4m-ld_um5g-85f_memtest.bit

Bitstream will generate 50MHz, 100MHz, 200MHz, 300MHz and push them on LEDs 0-3

It will also have counter from those frequencies on LEDs 4-7

