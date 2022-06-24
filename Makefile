NAME = fdf

SRCS = *.c

HEADERS = *.h

OBJS = $(SRCS:.c=.o)

GCC = gcc

FLAGS = -Wall -Wextra -Werror

RM = rm -f

ALL:	$(NAME)

.c.o:
	$(GCC) $(FLAGS) -c $< -o $(<:.c=.o)

$(NAME):
	$(GCC) -c $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS)

fclean:	clean
	$(RM) $(NAME)

re:	fclean all

.PHONY:	all clean fclean re
