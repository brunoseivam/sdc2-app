TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

PROD_IOC = sdc2
DBD += sdc2.dbd

sdc2_DBD += base.dbd
sdc2_DBD += asyn.dbd
sdc2_DBD += drvAsynSerialPort.dbd
sdc2_DBD += drvAsynIPPort.dbd
sdc2_DBD += stream.dbd

sdc2_LIBS += asyn
sdc2_LIBS += stream

sdc2_SRCS += sdc2_registerRecordDeviceDriver.cpp

sdc2_SRCS_DEFAULT += sdc2Main.cpp
sdc2_SRCS_vxWorks += -nil-

sdc2_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

