export CXXFLAGS=-g -Wall -O3
export CXX=g++
LDFLAGS=-g
AR=ar
ARFLAGS=rsv

SRCDIR:=src
HEADERDIR:=include
OBJDIR:=obj
OUTDIR:=lib

INCLUDES=$(HEADERDIR:%=-I%)

DIRS:=$(SRCDIR) $(OBJDIR) $(OUTDIR)

SRC:=$(wildcard $(SRCDIR)/*.cpp)
HEADERS:=$(wildcard)
OBJ:=$(SRC:$(SRCDIR)/%.cpp=$(OBJDIR)/%.o)
OUT:=lib/libtestlib.a

build: setup $(OUT)

$(OUT): $(OBJ)
	$(AR) $(ARFLAGS) $(OUT) $^

$(OBJ): $(OBJDIR)/%.o : $(SRCDIR)/%.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

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
