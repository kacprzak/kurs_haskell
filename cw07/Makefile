PROGS = cw07-01 cw07-02 cw07-03 cw07-04 cw07-05 #cw07-06

all: $(PROGS)

%: %.hs
	ghc --make $@

clean:
	rm *.hi *.o $(PROGS)

cleantmp:
	rm *~
