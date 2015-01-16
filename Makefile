SUBDIRS= blinky

.PHONY:  clean 

all:  checksum
	-for d in $(SUBDIRS); do (cd $$d; $(MAKE)); done

clean:
	rm checksum
	-for d in $(SUBDIRS); do (cd $$d; $(MAKE) clean); done

