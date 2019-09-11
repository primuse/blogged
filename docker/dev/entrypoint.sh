#!/bin/sh

printf "\n\n======================================\n"
printf "Making database migrations"
printf "\n======================================\n\n"

python3 run.py db migrate

printf "\n\n======================================\n"
printf "Start the application"
printf "\n======================================\n\n"

python3 run.py runserver

exit 0
