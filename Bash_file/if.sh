echo -n "Enter Number: "
read number

if [ $((number%2)) == 0 ]; then
  echo "GIVEN NUMBER IS EVEN"
else
  echo "GIVEN NUMBER IS ODD"
fi
