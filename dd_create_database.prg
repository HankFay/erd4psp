lParameters tcDatabase, tcDataDir
local lcOldDataDir

lcOldDataDir = psp_setdatadir(tcDataDir)

create database IF NOT EXISTS (tcDataBase)

=psp_setdatadir(lcOldDataDir)


