#!../../bin/linux-x86_64/tsujiCounter

# when every cmd is tested successfully, comment the following line to run all cmd
#! epicsEnvSet("RUN","#!------")

# run every cmd which has prefix $(RUN), if $(RUN) is unset
$(RUN="") epicsEnvSet("RUN","")
epicsEnvSet("TEST","")
epicsEnvSet("SKIP","#!------")
epicsEnvSet("UNDONE","#!------")

< envPaths

# Specify proto file search location
epicsEnvSet("STREAM_PROTOCOL_PATH", "$(TSUJICOUNTER)/tsujiCounterApp/Db")

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/tsujiCounter.dbd"
tsujiCounter_registerRecordDeviceDriver pdbbase

cd "${TOP}/iocBoot/${IOC}"

$(RUN)< live/counterTsuji.cmd

iocInit

date
