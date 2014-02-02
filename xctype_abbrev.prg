lParameters tnTypeID
local lcAbbrev

lcAbbrev = trim(keylookup("pxctypes","primary",tnTypeID,"type",""))
if !empty(lcAbbrev)
	lcAbbrev = left(lcAbbrev,1)
endif

return lcAbbrev