NAME = fractol

CC = gcc

CFLAGS = -Wall -Werror -Wextra

DBRULE =

INC =	-I./inc \
		-I./lib/libft/inc/ \
		-I /lib/minilibx-linux/

LIB = lib

LIBFT = -L $(LIB)/libft -lft

LIBMLX = -L $(LIB)/minilibx-linux -lmlx -lXext -lX11 -lm

SRC =	main.c

TMP = tmp

OBJ = $(addprefix $(TMP)/,$(SRC:.c=.o))

$(NAME) : $(OBJ)
	make -C $(LIB)/libft $(DBRULE)
	make -C $(LIB)/minilibx-linux
	$(CC) $(CFLAGS) -o $(NAME) $(OBJ) $(LIBFT) $(LIBMLX)

all : DBRULE += all
all : $(NAME)

$(TMP)/%.o : src/%.c
	mkdir -p $(TMP)
	$(CC) $(CFLAGS) $(INC) -c $< -o $@

norm :
	norminette .

debug : CFLAGS += -g -fsanitize=address
debug : DBRULE += debug
debug : re

clean :
	rm -rf $(TMP)
	make -C $(LIB)/libft clean
	make -C $(LIB)/minilibx-linux clean

fclean : clean
	rm -f $(NAME)

re : fclean $(NAME)

.PHONY : all norm debug clean fclean re
