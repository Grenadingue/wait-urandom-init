NAME	= wait-urandom-init

CC		= gcc
RM		= rm -rf

SRCS	= main.c
OBJS	= $(SRCS:.c=.o)

CFLAGS	= -Wall -Wextra -Werror


all:		$(NAME)

$(NAME):	$(OBJS)
			$(CC) -o $(NAME) $(OBJS)

clean:
			$(RM) $(OBJS)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

.PHONY:		all clean fclean re
