lParameters tcModeldir

if empty(tcModelDir)
	tcModelDir = getdir()
endif

if empty(tcModelDir)
	lianja.showmessage("Oops: have to know the xCase model directory!")
	return .F.
endif

tcModelDir = addbs(tcModelDir)

if !file(tcModelDir + "ddvel.dbf")
	lianja.showmessage("This doesn't look like an xCase Model Directory!")
	return .F.
endif

tcModelDir = addbs(tcModelDir)
