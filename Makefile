CC = cc

CFLAGS = -Wall -Werror -Wextra -I .

SRC =	check_format.c ft_printf.c ft_strchr.c putlchar.c \
		putlhex.c putlnbr.c putlptr.c  putlstr.c putlunbr.c putlhex_ul.c

OBJ = ${SRC:%.c=%.o}

RM = rm -f

AR = ar rcs

NAME = libftprintf.a

all: ${NAME}

%.o: %.c
	${CC} ${CFLAGS} -c $< -o $@

${NAME}: ${OBJ}
	${AR} $@ ${OBJ}

clean:
	${RM} ${OBJ}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY: all NAME clean fclean re
