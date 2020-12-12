
	flex -i arquivo.l
  	bison arquivo.y
	gcc arquivo.tab.c -o analisador -lm
	clear	
	./analisador