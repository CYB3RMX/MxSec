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
w1='\e[0m'
defbl='\e[49m'
#=====================
screen()
{
  clear
  echo -en $lc1"              ____ \a\n"
  echo -en "              \   \ \n"
  echo -en "               \   \ \n"
  echo -en " _______________    \ \n"
  echo -en "|                    \ \n"
  echo -en "|"$lr1"  HTTP HEADERS"$lc1"       > \n"
  echo -en "|_______________     / \n"
  echo -en "                    / \n"
  echo -en "               /   / \n"
  echo -en "              /___/ \n"
  echo -en $lbl2$black1"\nBY CYB3RMX_" $def2
  echo -en $def2"\n"
  echo -en $lc1"\n["$lr1"+"$lc1"]"$w1" ENTER A TARGET: "
  read target
  echo -en $lc1"["$lr1"+"$lc1"]"$w1" TARGET => "$lg1$target$w1
}
screen
inject()
{
  echo -en $lc1"\n\n["$lr1"+"$lc1"]"$w1" SENDING REQUEST...\a\n"
  exec 3<>/dev/tcp/$target/80
  echo -e "GET / HTTP/1.1\r\nhost: "$target"\r\nConnection: close\r\n\r\n" >&3
  echo -en $lc1"\n\n["$lr1"+"$lc1"]"$w1" SERVER RESPONDS..\a\n"$lm1
  cat <&3 | head -n 13
  echo -en $lc1"\n\n["$lr1"+"$lc1"]"$w1" REQUEST SENDING SUCCESSFUL...\a\n\n"
}
inject
goodbye()
{
  echo -en $lc1"     ■■■■■■■■■■■■■■■■ \a\n"
  echo -en "             ■■■■■ \n"
  echo -en "           ■■■■ \n"
  echo -en "       ■■■■              ■■■■■■■■■■■■■  \n"
  echo -en "         ■■■■■■■■       ■             ■ \n"
  echo -en "            ■■■         ■"$lg1" THANK YOU.."$lc1 "■ \n"
  echo -en "      ■    ■■■          ■             ■ \n"
  echo -en "       ■ ■■              ■■■■■■■■■■■■■  \n"
  echo -en "       ■■  \n"
  echo -en "     ■■  ■ \n"
  echo -en "          ■ \n\n"
  echo -en $lc1"["$lr1"+"$lc1"]"$w1" PRESS ANY KEY..\n"
  read any_key
}
goodbye
