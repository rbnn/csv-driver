LN=/bin/ln

all: xawk xdriver xfind xsort

xawk: xdriver
	$(LN) $< $@

xfind: xdriver
	$(LN) $< $@

xsort: xdriver
	$(LN) $< $@
