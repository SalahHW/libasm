CC = gcc
CFLAGS = -Wall -Wextra -Werror

LIB = ../libasm.a

SRCS	=	test_strlen.c \
				test_strcpy.c	\
				test_strcmp.c	\
				test_write.c	\
				test_read.c		\
				test_strdup.c	\

BINS	= $(SRCS:.c=)

all: $(BINS)

%: %.c
	$(CC) $(CFLAGS) $< $(LIB) -o $@

clean:
	rm -f $(BINS)

re: clean all

.PHONY: all clean re