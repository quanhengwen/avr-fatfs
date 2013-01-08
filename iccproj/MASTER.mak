CC = iccavr
LIB = ilibw
CFLAGS =  -e -D__ICC_VERSION=722 -DATMega128  -l -g -MLongJump -MHasMul -MEnhanced -Wf-use_elpm 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -g -e:0x20000 -ucrtatmega.o -bfunc_lit:0x8c.0x20000 -dram_end:0x10ff -bdata:0x100.0x10ff -dhwstk_size:30 -beeprom:0.4096 -fihx_coff -S2
FILES = diskio.o ff.o delay.o main.o sd.o gui.o usart.o SPI.o lcd.o relay.o beep.o DS18B20_driver.o ds1302.o key.o 

MASTER:	$(FILES)
	$(CC) -o MASTER $(LFLAGS) @MASTER.lk   -lcatm128
diskio.o: .\..\software_src\diskio.h .\..\software_src\integer.h .\..\software_src\sd.h .\..\software_src\config.h E:\PROGRA~1\icc\include\iom128v.h E:\PROGRA~1\icc\include\stdio.h E:\PROGRA~1\icc\include\stdarg.h E:\PROGRA~1\icc\include\_const.h E:\PROGRA~1\icc\include\stdlib.h E:\PROGRA~1\icc\include\limits.h E:\PROGRA~1\icc\include\string.h E:\PROGRA~1\icc\include\macros.h E:\PROGRA~1\icc\include\AVRdef.h .\..\software_src\main.h .\..\software_src\SPI.h .\..\software_src\ff.h .\..\software_src\ffconf.h .\..\software_src\usart.h .\..\software_src\delay.h .\..\software_src\lcd.h .\..\software_src\beep.h .\..\software_src\relay.h .\..\software_src\DS18B20_driver.h .\..\software_src\ds1302.h .\..\software_src\key.h .\..\software_src\gui.h .\..\software_src\powercheck.h
diskio.o:	..\software_src\diskio.c
	$(CC) -c $(CFLAGS) ..\software_src\diskio.c
ff.o: .\..\software_src\ff.h .\..\software_src\integer.h .\..\software_src\ffconf.h .\..\software_src\diskio.h E:\PROGRA~1\icc\include\string.h E:\PROGRA~1\icc\include\_const.h
ff.o:	..\software_src\ff.c
	$(CC) -c $(CFLAGS) ..\software_src\ff.c
delay.o:
delay.o:	..\software_src\delay.c
	$(CC) -c $(CFLAGS) ..\software_src\delay.c
main.o: .\..\software_src\config.h E:\PROGRA~1\icc\include\iom128v.h E:\PROGRA~1\icc\include\stdio.h E:\PROGRA~1\icc\include\stdarg.h E:\PROGRA~1\icc\include\_const.h E:\PROGRA~1\icc\include\stdlib.h E:\PROGRA~1\icc\include\limits.h E:\PROGRA~1\icc\include\string.h E:\PROGRA~1\icc\include\macros.h E:\PROGRA~1\icc\include\AVRdef.h .\..\software_src\main.h .\..\software_src\sd.h .\..\software_src\SPI.h .\..\software_src\diskio.h .\..\software_src\integer.h .\..\software_src\ff.h .\..\software_src\ffconf.h .\..\software_src\usart.h .\..\software_src\delay.h .\..\software_src\lcd.h .\..\software_src\beep.h .\..\software_src\relay.h .\..\software_src\DS18B20_driver.h .\..\software_src\ds1302.h .\..\software_src\key.h .\..\software_src\gui.h .\..\software_src\powercheck.h
main.o:	..\software_src\main.c
	$(CC) -c $(CFLAGS) ..\software_src\main.c
sd.o: .\..\software_src\sd.h .\..\software_src\config.h E:\PROGRA~1\icc\include\iom128v.h E:\PROGRA~1\icc\include\stdio.h E:\PROGRA~1\icc\include\stdarg.h E:\PROGRA~1\icc\include\_const.h E:\PROGRA~1\icc\include\stdlib.h E:\PROGRA~1\icc\include\limits.h E:\PROGRA~1\icc\include\string.h E:\PROGRA~1\icc\include\macros.h E:\PROGRA~1\icc\include\AVRdef.h .\..\software_src\main.h .\..\software_src\SPI.h .\..\software_src\diskio.h .\..\software_src\integer.h .\..\software_src\ff.h .\..\software_src\ffconf.h .\..\software_src\usart.h .\..\software_src\delay.h .\..\software_src\lcd.h .\..\software_src\beep.h .\..\software_src\relay.h .\..\software_src\DS18B20_driver.h .\..\software_src\ds1302.h .\..\software_src\key.h .\..\software_src\gui.h .\..\software_src\powercheck.h
sd.o:	..\software_src\sd.c
	$(CC) -c $(CFLAGS) ..\software_src\sd.c
gui.o: .\..\software_src\config.h E:\PROGRA~1\icc\include\iom128v.h E:\PROGRA~1\icc\include\stdio.h E:\PROGRA~1\icc\include\stdarg.h E:\PROGRA~1\icc\include\_const.h E:\PROGRA~1\icc\include\stdlib.h E:\PROGRA~1\icc\include\limits.h E:\PROGRA~1\icc\include\string.h E:\PROGRA~1\icc\include\macros.h E:\PROGRA~1\icc\include\AVRdef.h .\..\software_src\main.h .\..\software_src\sd.h .\..\software_src\SPI.h .\..\software_src\diskio.h .\..\software_src\integer.h .\..\software_src\ff.h .\..\software_src\ffconf.h .\..\software_src\usart.h .\..\software_src\delay.h .\..\software_src\lcd.h .\..\software_src\beep.h .\..\software_src\relay.h .\..\software_src\DS18B20_driver.h .\..\software_src\ds1302.h .\..\software_src\key.h .\..\software_src\gui.h .\..\software_src\powercheck.h
gui.o:	..\software_src\gui.c
	$(CC) -c $(CFLAGS) ..\software_src\gui.c
usart.o: .\..\software_src\config.h E:\PROGRA~1\icc\include\iom128v.h E:\PROGRA~1\icc\include\stdio.h E:\PROGRA~1\icc\include\stdarg.h E:\PROGRA~1\icc\include\_const.h E:\PROGRA~1\icc\include\stdlib.h E:\PROGRA~1\icc\include\limits.h E:\PROGRA~1\icc\include\string.h E:\PROGRA~1\icc\include\macros.h E:\PROGRA~1\icc\include\AVRdef.h .\..\software_src\main.h .\..\software_src\sd.h .\..\software_src\SPI.h .\..\software_src\diskio.h .\..\software_src\integer.h .\..\software_src\ff.h .\..\software_src\ffconf.h .\..\software_src\usart.h .\..\software_src\delay.h .\..\software_src\lcd.h .\..\software_src\beep.h .\..\software_src\relay.h .\..\software_src\DS18B20_driver.h .\..\software_src\ds1302.h .\..\software_src\key.h .\..\software_src\gui.h .\..\software_src\powercheck.h
usart.o:	..\software_src\usart.c
	$(CC) -c $(CFLAGS) ..\software_src\usart.c
SPI.o: .\..\software_src\SPI.h .\..\software_src\config.h E:\PROGRA~1\icc\include\iom128v.h E:\PROGRA~1\icc\include\stdio.h E:\PROGRA~1\icc\include\stdarg.h E:\PROGRA~1\icc\include\_const.h E:\PROGRA~1\icc\include\stdlib.h E:\PROGRA~1\icc\include\limits.h E:\PROGRA~1\icc\include\string.h E:\PROGRA~1\icc\include\macros.h E:\PROGRA~1\icc\include\AVRdef.h .\..\software_src\main.h .\..\software_src\sd.h .\..\software_src\diskio.h .\..\software_src\integer.h .\..\software_src\ff.h .\..\software_src\ffconf.h .\..\software_src\usart.h .\..\software_src\delay.h .\..\software_src\lcd.h .\..\software_src\beep.h .\..\software_src\relay.h .\..\software_src\DS18B20_driver.h .\..\software_src\ds1302.h .\..\software_src\key.h .\..\software_src\gui.h .\..\software_src\powercheck.h
SPI.o:	..\software_src\SPI.c
	$(CC) -c $(CFLAGS) ..\software_src\SPI.c
lcd.o: .\..\software_src\config.h E:\PROGRA~1\icc\include\iom128v.h E:\PROGRA~1\icc\include\stdio.h E:\PROGRA~1\icc\include\stdarg.h E:\PROGRA~1\icc\include\_const.h E:\PROGRA~1\icc\include\stdlib.h E:\PROGRA~1\icc\include\limits.h E:\PROGRA~1\icc\include\string.h E:\PROGRA~1\icc\include\macros.h E:\PROGRA~1\icc\include\AVRdef.h .\..\software_src\main.h .\..\software_src\sd.h .\..\software_src\SPI.h .\..\software_src\diskio.h .\..\software_src\integer.h .\..\software_src\ff.h .\..\software_src\ffconf.h .\..\software_src\usart.h .\..\software_src\delay.h .\..\software_src\lcd.h .\..\software_src\beep.h .\..\software_src\relay.h .\..\software_src\DS18B20_driver.h .\..\software_src\ds1302.h .\..\software_src\key.h .\..\software_src\gui.h .\..\software_src\powercheck.h
lcd.o:	..\software_src\lcd.c
	$(CC) -c $(CFLAGS) ..\software_src\lcd.c
relay.o: .\..\software_src\config.h E:\PROGRA~1\icc\include\iom128v.h E:\PROGRA~1\icc\include\stdio.h E:\PROGRA~1\icc\include\stdarg.h E:\PROGRA~1\icc\include\_const.h E:\PROGRA~1\icc\include\stdlib.h E:\PROGRA~1\icc\include\limits.h E:\PROGRA~1\icc\include\string.h E:\PROGRA~1\icc\include\macros.h E:\PROGRA~1\icc\include\AVRdef.h .\..\software_src\main.h .\..\software_src\sd.h .\..\software_src\SPI.h .\..\software_src\diskio.h .\..\software_src\integer.h .\..\software_src\ff.h .\..\software_src\ffconf.h .\..\software_src\usart.h .\..\software_src\delay.h .\..\software_src\lcd.h .\..\software_src\beep.h .\..\software_src\relay.h .\..\software_src\DS18B20_driver.h .\..\software_src\ds1302.h .\..\software_src\key.h .\..\software_src\gui.h .\..\software_src\powercheck.h
relay.o:	..\software_src\relay.c
	$(CC) -c $(CFLAGS) ..\software_src\relay.c
beep.o: .\..\software_src\config.h E:\PROGRA~1\icc\include\iom128v.h E:\PROGRA~1\icc\include\stdio.h E:\PROGRA~1\icc\include\stdarg.h E:\PROGRA~1\icc\include\_const.h E:\PROGRA~1\icc\include\stdlib.h E:\PROGRA~1\icc\include\limits.h E:\PROGRA~1\icc\include\string.h E:\PROGRA~1\icc\include\macros.h E:\PROGRA~1\icc\include\AVRdef.h .\..\software_src\main.h .\..\software_src\sd.h .\..\software_src\SPI.h .\..\software_src\diskio.h .\..\software_src\integer.h .\..\software_src\ff.h .\..\software_src\ffconf.h .\..\software_src\usart.h .\..\software_src\delay.h .\..\software_src\lcd.h .\..\software_src\beep.h .\..\software_src\relay.h .\..\software_src\DS18B20_driver.h .\..\software_src\ds1302.h .\..\software_src\key.h .\..\software_src\gui.h .\..\software_src\powercheck.h
beep.o:	..\software_src\beep.c
	$(CC) -c $(CFLAGS) ..\software_src\beep.c
DS18B20_driver.o: .\..\software_src\config.h E:\PROGRA~1\icc\include\iom128v.h E:\PROGRA~1\icc\include\stdio.h E:\PROGRA~1\icc\include\stdarg.h E:\PROGRA~1\icc\include\_const.h E:\PROGRA~1\icc\include\stdlib.h E:\PROGRA~1\icc\include\limits.h E:\PROGRA~1\icc\include\string.h E:\PROGRA~1\icc\include\macros.h E:\PROGRA~1\icc\include\AVRdef.h .\..\software_src\main.h .\..\software_src\sd.h .\..\software_src\SPI.h .\..\software_src\diskio.h .\..\software_src\integer.h .\..\software_src\ff.h .\..\software_src\ffconf.h .\..\software_src\usart.h .\..\software_src\delay.h .\..\software_src\lcd.h .\..\software_src\beep.h .\..\software_src\relay.h .\..\software_src\DS18B20_driver.h .\..\software_src\ds1302.h .\..\software_src\key.h .\..\software_src\gui.h .\..\software_src\powercheck.h
DS18B20_driver.o:	..\software_src\DS18B20_driver.c
	$(CC) -c $(CFLAGS) ..\software_src\DS18B20_driver.c
ds1302.o: .\..\software_src\config.h E:\PROGRA~1\icc\include\iom128v.h E:\PROGRA~1\icc\include\stdio.h E:\PROGRA~1\icc\include\stdarg.h E:\PROGRA~1\icc\include\_const.h E:\PROGRA~1\icc\include\stdlib.h E:\PROGRA~1\icc\include\limits.h E:\PROGRA~1\icc\include\string.h E:\PROGRA~1\icc\include\macros.h E:\PROGRA~1\icc\include\AVRdef.h .\..\software_src\main.h .\..\software_src\sd.h .\..\software_src\SPI.h .\..\software_src\diskio.h .\..\software_src\integer.h .\..\software_src\ff.h .\..\software_src\ffconf.h .\..\software_src\usart.h .\..\software_src\delay.h .\..\software_src\lcd.h .\..\software_src\beep.h .\..\software_src\relay.h .\..\software_src\DS18B20_driver.h .\..\software_src\ds1302.h .\..\software_src\key.h .\..\software_src\gui.h .\..\software_src\powercheck.h
ds1302.o:	..\software_src\ds1302.c
	$(CC) -c $(CFLAGS) ..\software_src\ds1302.c
key.o: .\..\software_src\config.h E:\PROGRA~1\icc\include\iom128v.h E:\PROGRA~1\icc\include\stdio.h E:\PROGRA~1\icc\include\stdarg.h E:\PROGRA~1\icc\include\_const.h E:\PROGRA~1\icc\include\stdlib.h E:\PROGRA~1\icc\include\limits.h E:\PROGRA~1\icc\include\string.h E:\PROGRA~1\icc\include\macros.h E:\PROGRA~1\icc\include\AVRdef.h .\..\software_src\main.h .\..\software_src\sd.h .\..\software_src\SPI.h .\..\software_src\diskio.h .\..\software_src\integer.h .\..\software_src\ff.h .\..\software_src\ffconf.h .\..\software_src\usart.h .\..\software_src\delay.h .\..\software_src\lcd.h .\..\software_src\beep.h .\..\software_src\relay.h .\..\software_src\DS18B20_driver.h .\..\software_src\ds1302.h .\..\software_src\key.h .\..\software_src\gui.h .\..\software_src\powercheck.h
key.o:	..\software_src\key.c
	$(CC) -c $(CFLAGS) ..\software_src\key.c
