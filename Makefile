INCLUDES=-Iinclude
CCFLAGS=-g -Wall -O3
CCC=g++
LDFLAGS=-g
AR=ar
ARFLAGS=rsv

SRCDIR:=src
OBJDIR:=obj
OUTDIR:=lib

DIRS:=$(SRCDIR) $(OBJDIR) $(OUTDIR)

SRC:=$(wildcard $(SRCDIR)/*.cpp)
OBJ:=$(SRC:$(SRCDIR)/%.cpp=$(OBJDIR)/%.o)
OUT:=lib/libtestlib.a

$(OUT): $(OBJ)
	$(AR) $(ARFLAGS) $@ $^

$(OBJ): $(OBJDIR)/%.o : $(SRCDIR)/%.cpp
	$(CCC) $(CFLAGS) $(INCLUDES) -c $< -o $@

setup: $(DIRS)
	make -C tests setup

$(DIRS):
	mkdir -p $@

test:
	make -C tests

runtest:
	make -C tests run

clean:
	# Or true to ensure second line is still run if first fails
	rm $(OUTDIR)/* $(OBJDIR)/* || true
	make -C tests clean
