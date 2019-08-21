LDFLAGS=-L../lib -ltestlib -g

SRCDIR:=src
HEADERDIR:=../include
OBJDIR:=obj
OUTDIR:=bin

INCLUDES=$(HEADERDIR:%=-I%)

DIRS:=$(SRCDIR) $(OBJDIR) $(OUTDIR)

SRC:=$(wildcard src/*.cpp)
OBJ:=$(SRC:$(SRCDIR)/%.cpp=$(OBJDIR)/%.o)
OUT:=$(OUTDIR)/test.out

build: setup $(OUT)

$(OUT): $(OBJ)
	$(CXX) $^ $(LDFLAGS) -o $@

$(OBJ): $(OBJDIR)/%.o : $(SRCDIR)/%.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

setup: $(DIRS)

$(DIRS):
	mkdir -p $@

run:
	$(OUT)

clean:
	rm $(OUT) $(OBJ) || true
