CC = ghc
CFLAGS = --make

PROGS = cw06-01 cw06-02 cw06-03 cw06-04 cw06-05 #cw06-06

all: $(PROGS)

cw06-01: cw06-01.hs
	$(CC) $(CFLAGS) $@

cw06-02: cw06-02.hs
	$(CC) $(CFLAGS) $@

cw06-03: cw06-03.hs
	$(CC) $(CFLAGS) $@

cw06-04: cw06-04.hs
	$(CC) $(CFLAGS) $@

cw06-05: cw06-05.hs
	$(CC) $(CFLAGS) $@

clean:
	rm *.hi *.o $(PROGS)

cleantmp:
	rm *~
