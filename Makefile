.PHONY: problem1 problem2 problem3 problem4 problem5 problem6 problem7

clean:
	rm *.hi *.o


problem1:
	ghc --make -O2 -dynamic problem1.hs -o problem1

problem2:
	ghc --make -O2 -dynamic problem2.hs -o problem2

problem3:
	ghc --make -O2 -dynamic problem3.hs -o problem3

problem4:
	ghc --make -O2 -dynamic problem4.hs -o problem4

problem5:
	ghc --make -O2 -dynamic problem5.hs -o problem5

problem6:
	ghc --make -O2 -dynamic problem6.hs -o problem6

problem7:
	ghc --make -O2 -dynamic problem7.hs -o problem7

