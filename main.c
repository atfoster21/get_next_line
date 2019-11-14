/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: atfoster <atfoster@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/25 19:00:35 by atfoster          #+#    #+#             */
/*   Updated: 2019/11/05 17:05:39 by atfoster         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

# include <stddef.h>
# include <stdlib.h>
# include <stdio.h>
# include <fcntl.h>
# include <sys/types.h>
# include <sys/uio.h>
# include <unistd.h>
# include "libft/libft.h"
# include "get_next_line.h"

int main ()
{
 char *line;
 int fd = open("voina.txt", 0);
  while(get_next_line(fd, &line))
  {
    printf("%s\n", line);
		ft_strdel(&line);
  }
  free(line);
return(0);
}