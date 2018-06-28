TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = tsujiCounter
# tsujiCounter.dbd will be created and installed
DBD += tsujiCounter.dbd

# tsujiCounter.dbd will be made up from these files:
tsujiCounter_DBD += base.dbd

# Include dbd files from all support applications:
tsujiCounter_DBD += asyn.dbd
tsujiCounter_DBD += stream.dbd
tsujiCounter_DBD += drvAsynIPPort.dbd

# Add all the support libraries needed by this IOC
tsujiCounter_LIBS += asyn
tsujiCounter_LIBS += stream

# tsujiCounter_registerRecordDeviceDriver.cpp derives from tsujiCounter.dbd
tsujiCounter_SRCS += tsujiCounter_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
tsujiCounter_SRCS_DEFAULT += tsujiCounterMain.cpp
tsujiCounter_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#tsujiCounter_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
tsujiCounter_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

