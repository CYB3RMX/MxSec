#!/usr/bin/bash

#COLOR ANT FONT AREA...
lg1='\e[92m'
lg2='\e[102m'
lr1='\e[91m'
lr2='\e[101m'
lbl2='\e[104m'
def2='\e[49m'
black1='\e[30m'
lc1='\e[96m'
lm1='\e[95m'
ly1='\e[93m'
ly2='\e[103m'
lm1='\e[95m'
w1='\e[0m'
defbl='\e[49m'

screen()
{
  clear
  echo -en $lg1" [[][][][][][]] \a\n"
  echo -en " [[][][][][][]] \n"
  echo -en " [[][][][][][]]"$lr1"    / \n"
  echo -en $lg1" [[][][][][][]]"$lr1"   /            // \n"
  echo -en $lg1" ["$w1" FIREWALL   "$lg1"]"$lr1" <<============== \n"
  echo -en $lg1" ["$w1"  HUNTER    "$lg1"]"$lr1"   \            \\ \n"
  echo -en $lg1" [[][][][][][]]"$lr1"    \ \n"
  echo -en $lg1" [[][][][][][]] \n"
  echo -en $lbl2$black1"\nBY CYB3RMX_" $def2
  echo -en $def2"\n"
  echo -en $lg1"\n<"$lm1"+"$lg1">"$w1" ENTER A TARGET: "
  read target
}
screen
detect()
{
  echo -en $lg1"\n<"$lm1"+"$lg1">"$w1" TARGET => "$lc1$target$w1
  echo " "
  wafw00f $target | tail -n 3
}
detect
