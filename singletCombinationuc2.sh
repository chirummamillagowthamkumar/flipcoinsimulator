declare -A dictcoinsinglet

heads=1
tails=0
headwin=0
tailwin=0
tie=0


 function win1()
  {
       for (( key=0;key<=5;key++ ))
         do
           flip=$(( RANDOM %2 ))
           if [ $flip -eq $heads ]
            then
               echo "heads"
               ((headwin++))
          elif [ $flip -eq $tails ]
           then
               echo "tails"
               ((tailwin++))
         else
                  exit

          fi
                    dictcoinsinglet[ "$key" ]=$val
       done

headwinper=`awk ""begin { print $(($headwin*100)) / $key }`
tailwinper=`awk ""begin { print $(($tailwin*100)) / $key }`
echo "head win" $headwinper
echo "tail win" $tailwinper




 }
 function sortingcombination
     {
        win1 | sort -n -k4
    }
sortingcombination | sort -n -k4
