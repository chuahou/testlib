INCLUDES=-I../include
CCFLAGS=-g -Wall -O3
CCC=g++
LDFLAGS=-L../lib -ltestlib -g

SRCDIR=src
OBJDIR=obj
OUTDIR=bin

SRC:=$(wildcard src/*.cpp)
OBJ:=$(SRC:$(SRCDIR)/%.cpp=$(OBJDIR)/%.o)
OUT:=$(OUTDIR)/test.out

$(OUT): $(OBJ)
	$(CCC) $< $(LDFLAGS) -o $@

$(OBJ): $(OBJDIR)/%.o : $(SRCDIR)/%.cpp
	$(CCC) $(CFLAGS) $(INCLUDES) -c $< -o $@

run:
	$(OUT)

clean:
	rm $(OUT) $(OBJ)