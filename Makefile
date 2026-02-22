NAME		=	libasm.a

ASM			=	nasm
ASMFLAGS	=	-f elf64

SRC			=	ft_strlen.s		\
				ft_strcpy.s		\
				ft_strcmp.s

OBJ			=	$(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

%.o: %.s
	$(ASM) $(ASMFLAGS) $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re