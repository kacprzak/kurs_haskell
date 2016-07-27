PROGS = cw08-03

all: $(PROGS)

%: %.hs
	ghc --make $@

clean:
	rm *.hi *.o $(PROGS)

cleantmp:
	rm *~
