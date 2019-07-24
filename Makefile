INCLUDES=-Iinclude
CCFLAGS=-g -Wall -O3
CCC=g++
LDLIBS=
LDFLAGS=-g
AR=ar
ARFLAGS=rsv

SRCDIR=src
OBJDIR=obj
OUTDIR=lib

SRC:=$(wildcard $(SRCDIR)/*.cpp)
OBJ:=$(SRC:$(SRCDIR)/%.cpp=$(OBJDIR)/%.o)
OUT:=lib/testlib.a

$(OUT): $(OBJ)
	$(AR) $(ARFLAGS) $@ $<

$(OBJ): $(OBJDIR)/%.o : $(SRCDIR)/%.cpp
	$(CCC) $(CFLAGS) $(INCLUDES) -c $< -o $@ $(LDLIBS)

clean:
	rm $(OUT) $(OBJ)