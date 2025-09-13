NAME		= get_next_line.a

SRC		= \
		ft_strchr.c \
		ft_strjoin.c \
		ft_strlen.c \
		ft_strdup.c \
		ft_substr.c \
		ft_extract_line.c \
		ft_get_remainder.c \
		ft_strjoin_and_free.c \
		get_next_line.c

SRCS		= ${addprefix ${PRE}, ${SRC}}

OBJS		= ${SRCS:.c=.o}

PRE			= ./srcs/
HEAD			= ./includes/

AR			= ar rc
RM			= rm -f
LIB			= ranlib

CC		= cc
CFLAGS		= -Wall -Wextra -Werror

all: ${NAME}

.c.o:
	${CC} ${CFLAGS} -c -I ${HEAD} $< -o ${<:.c=.o}

${NAME}: ${OBJS}
	${AR} ${NAME} ${OBJS}
	${LIB} ${NAME}

clean:
	rm -f ${OBJS}

fclean:	clean
	rm -f ${NAME}

re: fclean all

.PHONY:	all clean fclean re
