////////////////////////////////////////////////////////////////
// Event delegate for 'dialogbutton' event
proc xcase_import_xcaseimport_setup_txtModelDir_dialogbutton()
	lcDir = getdir()
	if xcmodeldir_validate(lcdir)
		m.cxCaseModelDir = lcdir
	else
		m.cxCaseModelDir = ""
	endif
endproc


////////////////////////////////////////////////////////////////
// Event delegate for 'ready' event
proc xcase_import_xcaseimport_setup_ready()
	psp_editmode("xcaseimport_setup")
endproc
