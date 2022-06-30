.PHONY install
install:
	cd test1; poetry install
	cd test2; poetry install

.PHONY: test
test: 
	cd test1; poetry run ket test1/test1.ket
	
	cd test2; poetry run ket test2/test2.ket

.PHONY: lis
lis:
	cd test1 
	ls

.PHONY: test1
test1: 
	cd test1; poetry run ket test1/test1.ket

.PHONY: test2
test2: 
	poetry run ket test2/test2.ket
