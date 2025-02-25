/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   philo.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abessa-m <abessa-m@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/02/17 17:00:58 by abessa-m          #+#    #+#             */
/*   Updated: 2025/02/17 17:00:58 by abessa-m         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PHILO_H
# define PHILO_H

/*	mandatory
pthread_mutex_init,
pthread_mutex_destroy,
pthread_mutex_lock,
pthread_mutex_unlock,

**	shared
memset, printf, malloc, free, write,
pthread_create, pthread_detach, pthread_join,
usleep, gettimeofday,

	bonus
fork, kill, exit,
waitpid, sem_open, sem_close,
sem_post, sem_wait, sem_unlink
*/

# include <pthread.h>	//pthread_mutex_init(), pthread_mutex_destroy(),
	//pthread_mutex_lock(), pthread_mutex_unlock(),
	//pthread_create(),
	//pthread_detach(),
	//pthread_join(),
# include <string.h>	//memset(),
# include <stdio.h>		//printf(),
# include <stdlib.h>	//malloc(), free(),
# include <unistd.h>	//write(),
	//usleep(),
# include <sys/time.h>	//gettimeofday(),

typedef struct s_dinner			t_dinner;
typedef struct s_philosopher	t_philosopher;

struct s_dinner
{
	int				verbose;
	int				n_philosophers;
	int				time_to_die;
	int				time_to_eat;
	int				time_to_zzz;
	int				must_eat;
	int				n_dead;
	pthread_mutex_t	*forks;
	pthread_mutex_t	print_mutex;
};

struct s_philosopher
{
	t_dinner	*dinner;
	int			seat;
	int			meals_eaten;
	long long	last_meal_time;
};

//	initialize.c
int				init_arguments(int argc, char **argv, int verbose);
t_dinner		*initialize_dinner(int argc, char **argv, int verbose);
t_philosopher	*initialize_philosophers(t_dinner	*dinner);
pthread_t		*initialize_threads(t_dinner *dinner,
					t_philosopher *philosophers);
void			free_and_close(t_philosopher *philosophers, t_dinner *dinner);
//	utils.c
long long		get_time(void);
int				ft_atoi(const char *nptr);
//	thread.c
void			*philosopher_thread(void *arg);
int				am_i_already_dead(t_philosopher *philosopher);
void			will_i_be_dead(t_philosopher *philosopher,
					long long time_it_takes);
int				multi_philosopher_case(t_philosopher *philosopher);
void			take_a_seat(t_philosopher *philosopher,
					int f1, int f2);
//	thread-fork.c
void			drop_the_forks(t_philosopher *philosopher,
					int f1, int f2);
int				take_fork_two_or_die_trying(t_philosopher *philosopher,
					int f1, int f2);
int				take_fork_one_or_die_trying(t_philosopher *philosopher,
					int first_fork);
int				place_second_fork(t_philosopher *philosopher);
int				place_first_fork(t_philosopher *philosopher);
//	thread-try.c
int				think_or_die_trying(t_philosopher *philosopher);
int				sleep_or_die_trying(t_philosopher *philosopher);
int				eat_or_die_trying(t_philosopher *philosopher,
					int f1, int f2);
void			philosophize_or_die_trying(t_philosopher *philosopher,
					int f1, int f2);

#endif
