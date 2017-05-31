default: breakpoint.so

breakpoint.cmx: breakpoint.ml
	ocamlfind opt -g -c -package binaryninja -package ctypes breakpoint.ml

generate_breakpoint.cmx: generate_breakpoint.ml breakpoint.cmx
	ocamlfind opt -g -c breakpoint.cmx -package binaryninja -package ctypes generate_breakpoint.ml

generator: generate_breakpoint.cmx breakpoint.cmx
	ocamlfind opt -g -o generator -package ctypes -package binaryninja -linkpkg breakpoint.cmx generate_breakpoint.cmx

binding.c: generator
	./generator

binding.o: binding.c
	gcc -c -fPIC -o $@ $^


breakpoint.so: binding.o breakpoint.cmx generate_breakpoint.cmx
	ocamlfind opt -g -o $@ -linkpkg -output-obj -runtime-variant _pic -verbose -package ctypes -package binaryninja $^

clean: 
	rm *.o *.cm* generator binding.c breakpoint.so


install: breakpoint.so
	cp breakpoint.so $(HOME)/.binaryninja/plugins

uninstall:
	rm $(HOME)/.binaryninja/plugins/breakpoint.so
