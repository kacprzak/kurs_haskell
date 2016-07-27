PROGS = cw08-03 cw08-04 cw08-05

all: $(PROGS)

%: %.hs
	ghc --make $@

clean:
	rm *.hi *.o $(PROGS)

cleantmp:
	rm *~
