#!/bin/bash

greeting="HELLO !!!"
user=$(whoami)
day=$(date +%A)

echo "$greeting $user Have you completed DTL Assignment ???...... $day is the submission day"
echo "Your BASH VERSION is  $BASH_VERSION"

