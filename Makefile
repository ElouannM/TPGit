CC=gcc
EXEC_FILES=main
SRC=$(wildcard *.c)
OBJ=$(SRC:.c=.o)

# $@ : cible courante
# $< : nom de la first dependance
# $^ : liste des dependances
# $? : liste des dependances + recentes que la cible 
# $* : nom d'un fchier sans son suffixe


all : $(EXEC_FILES)

%.o : %.c
	$(CC) -c $<

main : $(OBJ)
	$(CC) -o $@ $^


clean : 
	rm -f $(EXEC_FILES) $(OBJ) *~
