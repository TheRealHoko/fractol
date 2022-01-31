/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jzeybel <jzeybel@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/30 00:53:05 by jzeybel           #+#    #+#             */
/*   Updated: 2022/01/30 01:12:12 by jzeybel          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "fractol.h"

int	main(int ac, char **av)
{
	if (ac != 2)
		printf("./fractol <julia/mandelbrot>\n");
	else
		printf("entering checker with set : %s\n", av[1]);
	return (0);
}
