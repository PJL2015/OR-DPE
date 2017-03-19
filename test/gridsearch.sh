#!/bin/bash

for j in  "Text"
do
	echo -e "$j "
	./train -s 3 -c 0.03125 -v 5 -C $j.train
	./predict $j.test $j.train.model SVC-1.$j.out.txt
	./train -s 13 -c 0.03125 -v 5 -C $j.train
	./predict $j.test $j.train.model SVR-1.$j.out.txt
	./train -s 7 -c 0.03125 -v 5 -C $j.train
	./predict $j.test $j.train.model SVLR-1.$j.out.txt
	./train -s 8 -c 0.03125 -v 5 -m 2 -C $j.train
	./predict $j.test $j.train.model SVOR-1.$j.out.txt

	./train -s 8 -c 0.03125 -v 5 -m 1 -C $j.train
	./predict $j.test $j.train.model RedSVM-1.$j.out.txt	
	./train -s 10 -c 0.03125  -v 5 -m 2 -C $j.train
	./predict $j.test $j.train.model SVMOPnew-1.$j.out.txt

	./train -s 3 -c 0.03125 -v 5 -B 1 -C $j.train
	./predict $j.test $j.train.model SVC1.$j.out.txt
	./train -s 13 -c 0.03125 -v 5 -B 1 -C $j.train
	./predict $j.test $j.train.model SVR1.$j.out.txt
	./train -s 7 -c 0.03125 -v 5 -B 1 -C $j.train
	./predict $j.test $j.train.model SVLR1.$j.out.txt
	./train -s 8 -c 0.03125 -v 5 -m 2 -B 1 -C $j.train
	./predict $j.test $j.train.model SVOR1.$j.out.txt

	./train -s 8 -c 0.03125 -v 5 -m 1 -B 1 -C $j.train
	./predict $j.test $j.train.model RedSVM1.$j.out.txt		
	./train -s 10 -c 0.03125  -v 5 -m 2 -B 1 -C $j.train
	./predict $j.test $j.train.model SVMOPnew1.$j.out.txt	
done
