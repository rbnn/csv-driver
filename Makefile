LN=/bin/ln

all: xawk xdriver xfind xshuf xsort

xawk: xdriver
	$(LN) $< $@

xfind: xdriver
	$(LN) $< $@

xshuf: xdriver
	$(LN) $< $@

xsort: xdriver
	$(LN) $< $@
