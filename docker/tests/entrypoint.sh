#!/bin/sh

printf "\n\n======================================\n"
printf "Running linting checks and unit tests"
printf "\n======================================\n\n"

tox -e coverage

exit 0
