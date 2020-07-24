#!/bin/bash -x

declare -A dictcointriplet

heads=1
tails=0
headwin=0
tailwin=0
tie=0



 function win3()
  {
       for (( key=0;key<=5;key++ ))
         do
           flip=$(( RANDOM % 2 ))
           flip2=$(( RANDOM % 2 ))
            flip3=$(( RANDOM % 2 ))
            if [ $flip -eq $heads ] && [ $flip2 -eq $heads ] && [ $flip3 -eq $heads ]

            then
                 val="H"
                  val2="H"
                   val3="H"
               ((headheadheadwin++))
          elif [ $flip -eq $tails ] && [ $flip2 -eq $tails ] && [ $flip2 -eq $heads ]
           then
                 val="T"
                 val2="T"
                 val3="H"
               ((tailtailheadwin++))
          elif [ $flip -eq $heads ] && [ $flip2 -eq $tails ] && [ $flip2 -eq $heads ]
           then
                 val="H"
                 val2="T"
                 val2="H"
               ((headtailheadwin++))

           elif [ $flip -eq $tails ] && [ $flip2 -eq $heads] && [ $flip2 -eq $heads ]


           then
                 val="T"
                 val2="H"
                 val3="H"
               ((tailheadheadwin++))


      ((tailwin++))
          elif [ $flip -eq $heads ] && [ $flip2 -eq $tails] && [ $flip2 -eq $tails ]
           then
                 val="H"
                 val2="T"
                 val2="T"
               ((headtaitaillwin++))

           elif [ $flip -eq $heads ] && [ $flip2 -eq $heads] && [ $flip2 -eq $tails ]
           then
                 val="H"
                 val2="T"
                 val2="T"
               ((headtaitaillwin++))


         else
                  exit

          fi
                    dictcointriplet[ "$key" ]=$val$val2$val3
       done
headheadheadwinper=`awk ""begin { print $(($headwin*100)) / $key }`
tailtailheadwinper=`awk ""begin { print $(($tailwin*100)) / $key }`
echo "head head head win" $headheadheadwinper
echo "tail tail head win" $tailtailheadwinper
headtailheadwinper=`awk ""begin { print $(($headwin*100)) / $key }`
tailheadheadwinper=`awk ""begin { print $(($tailwin*100)) / $key }`
echo "head head head win" $headtailheadwinper
echo "tail tail head win" $tailheadheadwinper

headtailtailwinper=`awk ""begin { print $(($headwin*100)) / $key }`
headheadtailwinper=`awk ""begin { print $(($tailwin*100)) / $key }`
echo "head head head win" $headtailtailwinper
echo "tail tail head win" $headheadtailwinper
      }
 function sortingcombination
     {

        win3 | sort -n -k4
     }
sortingcombination | sort -n -k4
