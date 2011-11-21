SHELL = /bin/sh

-include ../config.mk
-include config.mk

TMPDIR=tmp
TOPDIR=$(shell \pwd)
INCDIR=include
SRCDIR=src
LIBDIR=lib
LIBDIRARCH=lib/archive
BINDIR=bin

# A few variables used in this Makefile:
EX           := main
EXE          := $(addsuffix .exe,$(EX))
PYTHIA8      ?= $(PWD)/..
STATICLIB    := $(PYTHIA8)/lib/archive/libpythia8.a
SHAREDLIB    := $(PYTHIA8)/lib/libpythia8.$(SHAREDSUFFIX)
DICTCXXFLAGS := -I$(PYTHIA8)/include 
ROOTCXXFLAGS := $(DICTCXXFLAGS) $(shell root-config --cflags)
FASTJETLOCATION := /usr/local

# LDFLAGS1 for static library, LDFLAGS2 for shared library
LDFLAGS1 := $(shell root-config --ldflags --glibs) \
  -L$(PYTHIA8)/lib/archive -lpythia8 -llhapdfdummy
LDFLAGS2 := $(shell root-config --ldflags --glibs) \
  -L$(PYTHIA8)/lib -lpythia8 -llhapdfdummy

# Default target; make examples (but not shared dictionary)
all: $(EX)

# Rule to build main. Needs static PYTHIA 8 library
ifneq (x$(FASTJETLOCATION),x)
  main: ../$(LIBDIRARCH)/libpythia8.a
	$(CXX) -I../$(INCDIR) $@.cc \
	`$(FASTJETLOCATION)/bin/fastjet-config --cxxflags --plugins` \
	$(CXXFLAGS) -Wno-shadow \
	-o $@.exe \
	-L../$(LIBDIRARCH) -lpythia8 -llhapdfdummy \
	-L$(FASTJETLOCATION)/lib \
	`$(FASTJETLOCATION)/bin/fastjet-config --libs --plugins`
	@rm -f $@.o
else
  main:
	@echo ERROR, this target needs Fastjet, variable FASTJETLOCATION
endif

clean:
	rm -f $(EXE) *.root
	rm -f *~; rm -f \#*; rm -f core*

