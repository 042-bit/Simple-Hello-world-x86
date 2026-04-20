NAME = hello

all: $(NAME)

$(NAME): $(NAME).asm
	nasm -f elf64 $(NAME).asm -o $(NAME).o
	ld $(NAME).o -o $(NAME)

run: $(NAME)
	./$(NAME)

clean:
	rm -f $(NAME).o $(NAME)

.PHONY: all run clean
