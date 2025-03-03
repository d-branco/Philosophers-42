clear

echo "
                                                                   MANDATORY"
sleep 1

make philo
make clean

wait_for_keypress()
{
	read -n 1 -s -r -p "		Press any key to continue..."
	echo ""
}

philo/philo  1 800 200 200
echo "		The philosopher should not eat and should die.
		FIM de philo/philo  1 800 200 200"
wait_for_keypress
philo/philo  5 400 100 100 21
echo "		No philosopher should die.
		FIM de philo/philo  5 400 100 100"
wait_for_keypress
philo/philo  5 800 200 200 7
echo "		No philosopher should die and the simulation should stop when every
		philosopher has eaten at least 7 times.
		FIM de philo/philo  5 800 200 200 7"
wait_for_keypress
philo/philo  4 410 200 200 21
echo "		No philosopher should die.
		FIM de philo/philo  4 410 200 200"
wait_for_keypress
philo/philo  4 310 200 100
echo "		One philosopher should die.
		FIM de philo/philo  4 310 200 100"
wait_for_keypress

philo/philo 4 310 200 100 14
echo "		FIM de philo/philo 4 310 200 100 14"
wait_for_keypress
philo/philo 4 410 200 200 21
echo "		FIM de philo/philo 4 410 200 200"
wait_for_keypress
philo/philo 5 800 200 200 14
echo "		FIM de philo/philo 5 800 200 200 14"
wait_for_keypress
philo/philo 4 410 200 200 14
echo "		FIM de philo/philo 4 410 200 200 14"
wait_for_keypress
philo/philo 2  60  60  60 14
echo "		FIM de philo/philo 2  60  60  60 14"
wait_for_keypress
philo/philo 10 410 200 200 14
echo "		FIM de philo/philo 10 410 200 200 14"
wait_for_keypress
philo/philo 6 7 28 1 14
echo "		FIM de philo/philo 6 7 28 1 14"
wait_for_keypress
philo/philo 6 10 40 2 14
echo "		FIM de philo/philo 6 10 40 2 14"
wait_for_keypress
philo/philo 6 12 48 3 14
echo "		FIM de philo/philo 6 12 48 3 14"
wait_for_keypress
philo/philo 6 15 60 4 14
echo "		FIM de philo/philo 6 15 60 4 14"
wait_for_keypress
philo/philo 7 7 28 1 14
echo "		FIM de philo/philo 7 7 28 1 14"
wait_for_keypress
philo/philo 7 10 40 2 14
echo "		FIM de philo/philo 7 10 40 2 14"
wait_for_keypress
philo/philo 7 12 48 3 14
echo "		FIM de philo/philo 7 12 48 3 14"
wait_for_keypress
philo/philo 7 15 60 4 14
echo "		FIM de philo/philo 7 15 60 4 14"
wait_for_keypress

echo "
                                                                       BONUS"
sleep 1
make bonus
make clean

philo_bonus/philo_bonus  1 800 200 200
echo "		The philosopher should not eat and should die.
		FIM de philo_bonus/philo_bonus  1 800 200 200"
wait_for_keypress
philo_bonus/philo_bonus  5 400 100 100 21
echo "		No philosopher should die.
		FIM de philo_bonus/philo_bonus  5 400 100 100"
wait_for_keypress
philo_bonus/philo_bonus  5 800 200 200 7
echo "		No philosopher should die and the simulation should stop when every
		philosopher has eaten at least 7 times.
		FIM de philo_bonus/philo_bonus  5 800 200 200 7"
wait_for_keypress
philo_bonus/philo_bonus  4 410 200 200 21
echo "		No philosopher should die.
		FIM de philo_bonus/philo_bonus  4 410 200 200"
wait_for_keypress
philo_bonus/philo_bonus  4 310 200 100
echo "		One philosopher should die.
		FIM de philo_bonus/philo_bonus  4 310 200 100"
wait_for_keypress

philo_bonus/philo_bonus 4 310 200 100 14
echo "		FIM de philo_bonus/philo_bonus 4 310 200 100 14"
wait_for_keypress
philo_bonus/philo_bonus 10 410 200 200 14
echo "		FIM de philo_bonus/philo_bonus 10 410 200 200 14"
wait_for_keypress
philo_bonus/philo_bonus 5 800 200 200 14
echo "		FIM de philo_bonus/philo_bonus 5 800 200 200 14"
wait_for_keypress
philo_bonus/philo_bonus 4 410 200 200 14
echo "		FIM de philo_bonus/philo_bonus 4 410 200 200 14"
wait_for_keypress
philo_bonus/philo_bonus 2  60  60  60 14
echo "		FIM de philo_bonus/philo_bonus 2  60  60  60 14"
wait_for_keypress
philo_bonus/philo_bonus 10 410 200 200 14
echo "		FIM de philo_bonus/philo_bonus 10 410 200 200 14"
wait_for_keypress
philo_bonus/philo_bonus 6 7 28 1 14
echo "		FIM de philo_bonus/philo_bonus 6 7 28 1 14"
wait_for_keypress
philo_bonus/philo_bonus 6 10 40 2 14
echo "		FIM de philo_bonus/philo_bonus 6 10 40 2 14"
wait_for_keypress
philo_bonus/philo_bonus 6 12 48 3 14
echo "		FIM de philo_bonus/philo_bonus 6 12 48 3 14"
wait_for_keypress
philo_bonus/philo_bonus 6 15 60 4 14
echo "		FIM de philo_bonus/philo_bonus 6 15 60 4 14"
wait_for_keypress
philo_bonus/philo_bonus 7 7 28 1 14
echo "		FIM de philo_bonus/philo_bonus 7 7 28 1 14"
wait_for_keypress
philo_bonus/philo_bonus 7 10 40 2 14
echo "		FIM de philo_bonus/philo_bonus 7 10 40 2 14"
wait_for_keypress
philo_bonus/philo_bonus 7 12 48 3 14
echo "		FIM de philo_bonus/philo_bonus 7 12 48 3 14"
wait_for_keypress
philo_bonus/philo_bonus 7 15 60 4 14
echo "		FIM de philo_bonus/philo_bonus 7 15 60 4 14"

echo ""
norminette | grep -v OK
if [ $(norminette | grep -v OK | wc -l) -eq 0 ]; then
  echo "	Norminette sends its love!"
fi
