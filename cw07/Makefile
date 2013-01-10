CC = ghc
CFLAGS = --make

PROGS = cw07-01 cw07-02 cw07-03 #cw07-04 cw07-05 cw07-06

all: $(PROGS)

%: %.hs
	$(CC) $(CFLAGS) $@

clean:
	rm *.hi *.o $(PROGS)

cleantmp:
	rm *~
