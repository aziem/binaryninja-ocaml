default: walkdfs.so

walkdfs.cmx: walkdfs.ml
	ocamlfind opt -g -c -package binaryninja -package ctypes walkdfs.ml

generator: walkdfs.cmx
	ocamlfind opt -g -o generator -package ctypes -package binaryninja -linkpkg walkdfs.cmx 

binding.c: generator
	./generator

binding.o: binding.c
	gcc -g -c -fPIC -o $@ $^

walkdfs.so: binding.o walkdfs.cmx 
	ocamlfind opt -g -o $@ -linkpkg -output-obj -runtime-variant _pic -verbose -package ctypes -package binaryninja $^

clean: 
	rm *.o *.cm* generator binding.c walkdfs.so

install: walkdfs.so
	cp walkdfs.so $(HOME)/.binaryninja/plugins

uninstall:
	rm $(HOME)/.binaryninja/plugins/walkdfs.so
