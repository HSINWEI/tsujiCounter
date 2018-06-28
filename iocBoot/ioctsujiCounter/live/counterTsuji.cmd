# BEGIN serial.cmd ------------------------------------------------------------
# serial 3 is connected to the counter Tsuji NCT08-01
drvAsynIPPortConfigure("CNTR01","192.168.2.123:7777",0,0,0)
dbLoadTemplate("live/counterTsuji.substitutions")
# END serial.cmd --------------------------------------------------------------
