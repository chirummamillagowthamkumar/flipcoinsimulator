#!/bin/bash -x

declare -A dictcoindoublet

heads=1
tails=0
headwin=0
tailwin=0
tie=0



 function win2()
  {
       for (( key=0;key<=5;key++ ))
         do
           flip=$(( RANDOM % 2 ))
           flip2=$(( RANDOM % 2 ))
            if [ $flip -eq $heads ] && [ $flip2 -eq $heads ]
            then
                 val="H"
                  val2="H"
               ((headwin++))
          elif [ $flip -eq $tails ] && [ $flip2 -eq $tails ]

           then
                 val="T"
                 val2="T"
               ((tailwin++))
          elif [ $flip -eq $heads ] && [ $flip2 -eq $tails ]

           then
                 val="H"
                 val2="T"
               ((headtailwin++))

           elif [ $flip -eq $tails ] && [ $flip2 -eq $heads ]

           then
                 val="T"
                 val2="H"
               ((tailheadwin++))


         else
                  exit

          fi
                    dictcoindoublet[ "$key" ]=$val$val2
      done
   
headheadwinper=`awk ""begin { print $(($headwin*100)) / $key }`
tailtailwinper=`awk ""begin { print $(($tailwin*100)) / $key }`
echo "head head win" $headheadwinper
echo "tail tail win" $tailtailwinper
headtailwinper=`awk ""begin { print $(($headtailwin*100)) / $key }`
tailheadwinper=`awk ""begin { print $(($tailheadwin*100)) / $key }`
echo "head head win" $headheadwinper
echo "tail tail win" $tailtailwinper
   }
 
function sortingcombination
     {
        win2 | sort -n -k4
   
     }
sortingcombination | sort -n -k4
