# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: atfoster <atfoster@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/05/04 19:40:59 by klaurine          #+#    #+#              #
#    Updated: 2019/10/30 17:42:03 by atfoster         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SOURCE = get_next_line.c

OBJECTS = get_next_line.o

FLAGS = -Wall -Wextra -Werror

all:
	make -C libft/ fclean && make -C libft/
	clang $(FLAGS) -I libft/includes -o $(OBJECTS) -c $(SOURCE)
	clang $(FLAGS) -I libft/includes -o main.o -c main.c
	clang -o test_gnl main.o $(OBJECTS) -I libft/includes -L libft/ -lft

clean:
	rm -f *.o
	rm -f test_gnl

fclean: clean
	make -C libft/ fclean

re:
	fclean all
