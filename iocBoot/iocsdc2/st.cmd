#!../../bin/linux-x86_64/sdc2

< envPaths
epicsEnvSet("STREAM_PROTOCOL_PATH", "../../sdc2App/Db")

dbLoadDatabase("../../dbd/sdc2.dbd",0,0)
sdc2_registerRecordDeviceDriver(pdbbase) 

drvAsynSerialPortConfigure("SDC2", "/dev/ttyUSB0")
asynSetOption("SDC2", 0, "baud", "115200")

#asynSetTraceMask("SDC2", -1, 0x9)
#asynSetTraceIOMask("SDC2", -1, 0x9)

dbLoadRecords("../../db/sdc2.db","P=SDC2:,,PORT=SDC2")

iocInit()
