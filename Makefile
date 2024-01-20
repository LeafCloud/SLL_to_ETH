all:
	cd src && $(MAKE)
	cp src/sll2eth ./
	cp src/sll2eth bin/
clean: 
	rm -f sll2eth
