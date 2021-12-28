num=4
w=${1-3}
if [ $((num%2)) -ne 0 ]
then
 line() { 
   printf "%$(($1+w))s\n" "$(yes "* " | sed ${1}q | tr -d \n)"; 
   }
 for i in $(seq $w) $(seq $((w-1)) -1 1); 
 do line $i;  
 done
 else if [ $rem -eq 0 ]
then
  echo "$n is even number"
else
#-n -> allows not to append to next line
for((i=n; i>=1; i--))
do
  for((j=1; j<=i; j++))
  do
    echo -n "* "
  done
  echo
done
fi
fi
