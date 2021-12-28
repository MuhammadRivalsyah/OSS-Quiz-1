num=9
w=${1-3}
if [ $((num%2)) -ne 0 ]
then
 line() { 
   printf "%$(($1+w))s\n" "$(yes "* " | sed ${1}q | tr -d \n)"; 
   }
 for i in $(seq $w) $(seq $((w-1)) -1 1); 
 do line $i; 
 done
 else
   echo "Value not perfect"
fi
