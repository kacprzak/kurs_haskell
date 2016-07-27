PROGS = cw08-03 cw08-04

all: $(PROGS)

%: %.hs
	ghc --make $@

clean:
	rm *.hi *.o $(PROGS)

cleantmp:
	rm *~
