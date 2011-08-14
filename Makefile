.PHONY: problem1 problem2 problem3 problem4 problem5 problem6 problem7 problem8 problem9 problem10
.PHONY: problem11 problem16 problem20

CC=ghc --make -O2 -dynamic

clean:
	rm *.hi *.o



problem1:
	$(CC) problem1.hs -o problem1

problem2:
	$(CC) problem2.hs -o problem2

problem3:
	$(CC) problem3.hs -o problem3

problem4:
	$(CC) problem4.hs -o problem4

problem5:
	$(CC) problem5.hs -o problem5

problem6:
	$(CC) problem6.hs -o problem6

problem7:
	$(CC) problem7.hs -o problem7

problem8:
	$(CC) problem8.hs -o problem8

problem9:
	$(CC) problem9.hs -o problem9

problem10:
	$(CC) problem10.hs -o problem10

problem11:
	$(CC) problem11.hs -o problem11

problem16:
	$(CC) problem16.hs -o problem16

problem20:
	$(CC) problem20.hs -o problem20

