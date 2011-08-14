.PHONY: problem1 problem2 problem3 problem4 problem5 problem6 problem7 problem8 problem9 problem10
.PHONY: problem11 problem16 problem20

CC=ghc
CFLAGS=--make -O2 -dynamic

clean:
	rm *.hi *.o


problem1:
	$(CC) $(CFLAGS) $@.hs -o $@

problem2:
	$(CC) $(CFLAGS) $@.hs -o $@

problem3:
	$(CC) $(CFLAGS) $@.hs -o $@

problem4:
	$(CC) $(CFLAGS) $@.hs -o $@

problem5:
	$(CC) $(CFLAGS) $@.hs -o $@

problem6:
	$(CC) $(CFLAGS) $@.hs -o $@

problem7:
	$(CC) $(CFLAGS) $@.hs -o $@

problem8:
	$(CC) $(CFLAGS) $@.hs -o $@

problem9:
	$(CC) $(CFLAGS) $@.hs -o $@

problem10:
	$(CC) $(CFLAGS) $@.hs -o $@

problem11:
	$(CC) $(CFLAGS) $@.hs -o $@

problem16:
	$(CC) $(CFLAGS) $@.hs -o $@

problem20:
	$(CC) $(CFLAGS) $@.hs -o $@

