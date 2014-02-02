////////////////////////////////////////////////////////////////
// Event delegate for 'init' event
proc xcase_import_init()
	public m.cxcasemodeldir = ""
endproc


////////////////////////////////////////////////////////////////
// Event delegate for 'activate' event
proc xcase_import_activate()
	psp_editmode("xcase_import.xcaseimport_setup")
endproc
