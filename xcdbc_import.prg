lParameters tcModelDir

if !xcModelDir_validate(@tcModelDir)
	return .f.
endif

psp_usein("xcdbc,erddbc")
use (tcModelDir + "dddbc") in 0 alias xcdbc
use pdatabase in 0 alias erddbc

insert into erddbc (cdbname, cpdatabasetype_fk) ;
	select padr(psp_validname(xcdbc.name),32), dbtypeforname("Lianja") from xcdbc
	
return reccount("erddbc")