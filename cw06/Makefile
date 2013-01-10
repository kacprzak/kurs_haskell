PROGS = cw06-01 cw06-02 cw06-03 cw06-04 cw06-05 cw06-06

all: $(PROGS)

%: %.hs
	ghc --make $@

clean:
	rm *.hi *.o $(PROGS)

cleantmp:
	rm *~
