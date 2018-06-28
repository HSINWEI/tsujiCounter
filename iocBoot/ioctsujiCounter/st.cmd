#!../../bin/linux-x86_64/tsujiCounter

## You may have to change tsujiCounter to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/tsujiCounter.dbd"
tsujiCounter_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/xxx.db","user=hwchenHost")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=hwchenHost"
