
PROGRAMS := problem1  problem2  problem3  problem4  problem5  problem6  problem7  problem8  problem9  problem10 \
            problem11 problem12 problem13 problem14 problem16 problem20 problem25 problem48

CC=ghc
CFLAGS=--make -O2 -dynamic


all: $(PROGRAMS)

clean:
	rm -f *.hi *.o
	rm -f $(PROGRAMS)

problem%: problem%.hs
	$(CC) $(CFLAGS) $@.hs -o $@
	strip $@

runall:
	@$(foreach var,$(PROGRAMS), echo -n "$(var): \t" ; ./$(var);)

timeeach:
	@$(foreach var,$(PROGRAMS), echo "\n$(var)" ; time -f "%U user, %S system, %E total" ./$(var);)


