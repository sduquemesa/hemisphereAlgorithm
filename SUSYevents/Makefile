#
# Examples Makefile.
#
#                  M. Kirsanov 07.04.2006
#                     Modified 18.11.2006
#                     26.03.2008 CLHEP dependency removed

SHELL = /bin/sh

-include ../config.mk
-include config.mk

# Location of directories.
TMPDIR=tmp
TOPDIR=$(shell \pwd)
INCDIR=include
SRCDIR=src
LIBDIR=lib
LIBDIRARCH=lib/archive
BINDIR=bin

# There is no default behaviour, so remind user.
all:
	@echo "Usage: for NN = example number: make mainNN"

# Create an executable for one of the normal test programs
main0: \
	../$(LIBDIRARCH)/libpythia8.a
	@mkdir -p ../$(BINDIR)
	$(CXX) $(CXXFLAGS) -I../$(INCDIR) $@.cc -o ../$(BINDIR)/$@.exe \
	-L../$(LIBDIRARCH) -lpythia8 -llhapdfdummy
	@ln -fs ../$(BINDIR)/$@.exe $@.exe

# Create an executable linked to HepMC (if all goes well).
# Owing to excessive warning output -Wshadow is not used for HepMC.
ifneq (x$(HEPMCLOCATION),x)
  main31 main32: \
	../$(LIBDIRARCH)/libpythia8.a ../$(LIBDIRARCH)/libhepmcinterface.a
	@mkdir -p ../$(BINDIR)
	$(CXX) $(CXXFLAGS) -Wno-shadow -I../$(INCDIR) -I$(HEPMCLOCATION)/include \
	$@.cc -o ../$(BINDIR)/$@.exe \
	-L../$(LIBDIRARCH) -lpythia8 -llhapdfdummy \
	-lhepmcinterface \
	-L$(HEPMCLOCATION)/lib -lHepMC
	@ln -fs ../$(BINDIR)/$@.exe $@.exe
else
  main31 main32:
	@echo ERROR, this target needs HepMC, variable HEPMCLOCATION
endif

# Create an executable that links to LHAPDF
main41 main42 main43: ../$(LIBDIRARCH)/libpythia8.a
	@mkdir -p ../$(BINDIR)
	$(CXX) $(CXXFLAGS) -I../$(INCDIR) $@.cc -o ../$(BINDIR)/$@.exe \
	-L../$(LIBDIRARCH) -lpythia8 \
	-L$(LHAPDFLOCATION) $(LHAPDFLIBNAME) \
	$(FLIBS)
	@ln -fs ../$(BINDIR)/$@.exe $@.exe

# Create an executable that links to Pythia6. This part is obsolete and 
# only retained, in a watered-down version, for debug purposes.
# Library created with "gfortran -c pythia64xx.f" (xx = current subversion),
# followed by "ar cru libpythia6.a pythia64xx.o" (on Linux).
# You would need to uncomment below and correct pythia6 library path.
#main51: ../$(LIBDIRARCH)/libpythia8.a
#	@mkdir -p ../$(BINDIR)
#	$(CXX) $(CXXFLAGS) -I../$(INCDIR) $@.cc -o ../$(BINDIR)/$@.exe \
#	-L../$(LIBDIRARCH) -lpythia8 -llhapdfdummy \
#	-L/directoryoflibpythia6.a -lpythia6 \
#	$(FLIBS)
#	@ln -fs ../$(BINDIR)/$@.exe $@.exe

# Create an executable that links to Fastjet
# Owing to excessive warning output -Wshadow is not used for Fastjet.
ifneq (x$(FASTJETLOCATION),x)
  main61: ../$(LIBDIRARCH)/libpythia8.a
	@mkdir -p ../$(BINDIR)
    # Note: $(CXXFLAGS) is after Fastjet flags as Fastjet includes
    #       optimisation/debug flags which may be unwanted (e.g. -g -O2)
	$(CXX) -I../$(INCDIR) $@.cc \
	`$(FASTJETLOCATION)/bin/fastjet-config --cxxflags --plugins` \
	$(CXXFLAGS) -Wno-shadow \
	-o ../$(BINDIR)/$@.exe \
	-L../$(LIBDIRARCH) -lpythia8 -llhapdfdummy \
	-L$(FASTJETLOCATION)/lib \
	`$(FASTJETLOCATION)/bin/fastjet-config --libs --plugins`
	@ln -fs ../$(BINDIR)/$@.exe $@.exe
	@rm -f $@.o
else
  main61:
	@echo ERROR, this target needs Fastjet, variable FASTJETLOCATION
endif

# Clean up: remove executables and outdated files.
.PHONY: clean
clean:
	rm -rf ../$(BINDIR)
	rm -rf *.exe
	rm -f *~; rm -f \#*; rm -f core*
