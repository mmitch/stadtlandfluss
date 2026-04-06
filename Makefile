.PHONY: all dist clean

all: clean dist

dist:
	# this will only work for me :P
	scp slf.html ks4:www/slf/slf.html

clean:
	rm -vf *~
