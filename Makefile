# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mvaude <mvaude@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/03 11:08:51 by mvaude            #+#    #+#              #
#    Updated: 2015/04/10 01:09:39 by mvaude           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=		ft_strace

CFLAGS		+=		-Wall -Werror -Wextra

SRC		=		src/main.c
						
H_PATH		=		./inc

LIB_PATH	=		./

SRC_PATH	=		./src/

OBJ_PATH	=		./obj/

MKDIR		?=		mkdir

SHIT		=		$(SRC:.s=.s~)

obj/%.o		:		src/%.s
	@$(MKDIR) -p $(dir $@)

all		:		$(NAME)

$(NAME)		:		$(SRC)
	$(CC) $(CFLAGS) -o $@ $<

clean		:

fclean		:		clean
	rm -f $(NAME)

re		:		fclean all

.PHONY		:		clean, fclean, re
