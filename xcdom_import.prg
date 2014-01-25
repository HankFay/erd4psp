lParameters tcModelDir

if !xcModelDir_validate(@tcModelDir)
	return .f.
endif

psp_usein("xcdom,erdcom")
use (tcModelDir + "ddddom") in 0 alias xcddom
use pdatabase in 0 alias erddbc

insert into erddom ( ;
	cpdomain_PK, cName, cpDataType_PK, nLength, nDecimals, lUnsigned, lBinary, ;
		mEnabled, mVisible, mOnChange, cDefault, cInputMask, cPlaceHolder, ;
		lPasswordInput, lReturnTabs, callowblankExpr, mChoices, mValidation, ;
		mErrorMessage, mTooltip, lSynctoHere, lFromRepository) ;
	select guid(),padr(d_name,32),len, dec,.f.,mEnabExpr,mVisibExpr,"", e_default, inputmask, "", ;
		"", .T.,  
	
return reccount("erddbc")