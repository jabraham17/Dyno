

CHPL_HOST_CXX=$(shell $(CHPL_HOME)/util/chplenv/chpl_compiler.py --cxx --host)
CHPL_HOST_BIN_SUBDIR=$(shell $(CHPL_HOME)/util/chplenv/chpl_bin_subdir.py --host)
CHPL_LIB_PATH=$(CHPL_HOME)/lib/compiler/$(CHPL_HOST_BIN_SUBDIR)
CHPL_LIB_INSTALL_PATH=$(shell python3 $(CHPL_HOME)/util/chplenv/chpl_home_utils.py --configured-install-lib-prefix)

LLVM_C_FLAGS=$(shell $(CHPL_HOME)/util/chplenv/chpl_llvm.py --host-cxxflags)

INCLUDES=-I$(CHPL_HOME)/frontend/include
LIBS=-L$(CHPL_LIB_PATH) --ldflags=-Wl,-rpath,$(CHPL_LIB_PATH)
ifneq (,$(CHPL_LIB_INSTALL_PATH))
ifneq (None,$(CHPL_LIB_INSTALL_PATH))
LIBS+= -L$(CHPL_LIB_INSTALL_PATH) --ldflags=-Wl,-rpath,$(CHPL_LIB_INSTALL_PATH)
endif
endif
LIBS+= $(shell $(CHPL_HOME)/util/chplenv/chpl_llvm.py --host-ldflags | \
  tr ' ' '\n' | awk '{ print "--ldflags="$$1 }' | tr '\n' ' ' | sed -E 's/[ \n]+$$//')
LIBS+= -lChplFrontend

all:
	$(CHPL_HOST_CXX) $(LLVM_C_FLAGS) $(INCLUDES) -c -o dyno.o dyno.cpp
	@# many chapel install do not currently distribute c2chapel, so bundle it for now
	@# $(CHPL_HOME)/tools/c2chapel/c2chapel $(INCLUDES) -DCHPL_DO_EXTERN_C dyno.h > DynoC.chpl


printchplflags:
	@$(info --ccflags=-DCHPL_DO_EXTERN_C --ccflags=-Wno-strict-prototypes -I$(MASON_PACKAGE_HOME)/prereqs/dyno/ $(INCLUDES) $(MASON_PACKAGE_HOME)/prereqs/dyno/DynoC.chpl $(MASON_PACKAGE_HOME)/prereqs/dyno/dyno.o $(LIBS) )

clean:
	rm -f dyno.o DynoC.chpl
