NAME      := libpsm2
SRC_EXT   := gz
SOURCE     = https://github.com/intel/opa-psm2/archive/PSM2_$(VERSION).tar.gz

include packaging/Makefile_packaging.mk

# non-standard release naming requires custom rules
PSM2_$(VERSION).tar.$(SRC_EXT): $(SPEC) $(CALLING_MAKEFILE)
	rm -f ./PSM2_*.tar.{gz,bz*,xz}
	curl -f -L -O '$(SOURCE)'

