#**************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pmartine <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/11/26 19:06:17 by pmartine          #+#    #+#              #
#    Updated: 2015/12/13 15:33:20 by pmartine         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_memset.c ft_bzero.c ft_memcpy.c ft_memccpy.c ft_memmove.c \
	ft_memchr.c ft_memcmp.c ft_strlen.c ft_strdup.c ft_strcpy.c ft_strncpy.c \
	ft_strcmp.c ft_strncmp.c ft_strcat.c ft_strncat.c ft_strlcat.c \
	ft_strchr.c ft_strrchr.c ft_strstr.c ft_strnstr.c ft_strcmp.c ft_strncmp.c \
	ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
	ft_isprint.c ft_toupper.c ft_tolower.c ft_memalloc.c ft_memdel.c \
	ft_strnew.c ft_strdel.c ft_strclr.c ft_striter.c ft_striteri.c \
	ft_strmap.c ft_strmapi.c ft_strequ.c ft_strnequ.c ft_strsub.c \
	ft_strjoin.c ft_strtrim.c ft_strsplit.c ft_itoa.c ft_putchar.c \
	ft_putstr.c ft_putendl.c ft_putnbr.c ft_putchar_fd.c ft_putstr_fd.c \
	ft_putendl_fd.c ft_putnbr_fd.c ft_lstnew.c ft_lstdelone.c \
	ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c ft_isspace.c \
	ft_lstaddback.c ft_tolowstr.c ft_touppstr.c ft_strrev.c ft_clear_tab.c

FLAGS = -Wall -Werror -Wextra

$(NAME):
	gcc $(FLAGS) -c $(SRC)
	ar -r $(NAME) *.o
	ranlib $(NAME)

all: $(NAME)

clean:
	rm -f *.o

fclean: clean
	rm $(NAME)

re: fclean all
