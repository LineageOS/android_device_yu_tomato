#!/system/bin/sh

# grep the modem partition for baseband version and set it
setprop gsm.version.baseband `strings /firmware/image/modem.b18 | grep "^MPSS.DPM" | head -1`
