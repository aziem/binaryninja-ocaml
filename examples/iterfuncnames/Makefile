default: iterfuncnames.so

iterfuncnames.cmx: iterfuncnames.ml
	ocamlfind opt -g -c -package binaryninja -package ctypes iterfuncnames.ml

generator: iterfuncnames.cmx
	ocamlfind opt -g -o generator -package ctypes -package binaryninja -linkpkg iterfuncnames.cmx 

binding.c: generator
	./generator

binding.o: binding.c
	gcc -c -fPIC -o $@ $^

iterfuncnames.so: binding.o iterfuncnames.cmx 
	ocamlfind opt -g -o $@ -linkpkg -output-obj -runtime-variant _pic -verbose -package ctypes -package binaryninja $^

clean: 
	rm *.o *.cm* generator binding.c iterfuncnames.so

install: iterfuncnames.so
	cp iterfuncnames.so $(HOME)/.binaryninja/plugins

uninstall:
	rm $(HOME)/.binaryninja/plugins/iterfuncnames.so
