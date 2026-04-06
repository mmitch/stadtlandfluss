.PHONY: all dist clean

FILE=slf.html
GENERATED_FILE=slf.expanded.html
COMMIT=$(shell git describe --always --abbrev --dirty)

all: dist clean

dist:
	# this will only work for me :P
	sed "s/<!-- COMMIT -->/; version $(COMMIT)/" < $(FILE) > $(GENERATED_FILE)
	scp $(GENERATED_FILE) ks4:www/slf/$(FILE)

clean:
	rm -vf *~
	rm -vf $(GENERATED_FILE)
