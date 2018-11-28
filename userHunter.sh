#!/usr/bin/bash

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
lm1='\e[95m'
defbl='\e[49m'
#-----------------------#
screen()
{
  clear
  echo -en $w1"         @"$lc1"            _    _  _____ ______ _____\a\n"
  echo -en $w1"         @"$lc1"           | |  | |/ ____|  ____|  __ \ \n"
  echo -en $w1"       @@@@@"$lc1"         | |  | | (___ | |__  | |__) | \n"
  echo -en $w1"      @  @  @"$lc1"        | |  | |\___ \|  __| |  _  / \n"
  echo -en $w1"     @  @@@  @"$lc1"       | |__| |____) | |____| | \ \ \n"
  echo -en $w1"    @  @"$lr1" @"$w1" @  @"$lc1"       \____/|_____/|______|_|__\_\______ _____ \n"
  echo -en $w1"@@@@@@@@"$lr1"@@@"$w1"@@@@@@@@"$lg1"  | |  | | |  | | \ | |__   __|  ____|  __ \ \n"
  echo -en $w1"    @  @"$lr1" @"$w1" @  @"$lg1"      | |__| | |  | |  \| |  | |  | |__  | |__) | \n"
  echo -en $w1"     @  @@@  @"$lg1"       |  __  | |  | |     |  | |  |  __| |  _  / \n"
  echo -en $w1"      @  @  @"$lg1"        | |  | | |__| | |\  |  | |  | |____| | \ \ \n"
  echo -en $w1"       @@@@@"$lg1"         |_|  |_|\____/|_| \_|  |_|  |______|_|  \_\ \n"
  echo -en $w1"         @ \n"
  echo -en $w1"         @ \n"
  echo -en $lbl2$black1"\nBY CYB3RMX_" $def2
  echo -en $def2"\n"
  echo -en $lc1"\n|"$lr1"+"$lc1"|"$w1" ENTER TARGETS NAME: "
  read target
  echo -en $lc1"\n|"$lr1"+"$lc1"|"$w1" TARGET => "$lm1$target$w1
  echo " "
}
screen
echo -en $lg1"[][][][][][][][][][][][][][] \n"
search()
{
  echo -en $lc1"\n|"$lr1"+"$lc1"|"$w1" SEARCHING IN INSTAGRAM...\a\n"
  curl -s -H "Accept-Language: en" "https://www.instagram.com/${target}" -L | grep "@${target}" &>/dev/null
  if [ $? -eq 0 ]
  then
    echo -en $lg1"\n|"$ly1"+"$lg1"|"$w1" USER FOUND ${lg1}@${target} \a\n"
  else
    echo -en $lg1"\n|"$ly1"+"$lg1"|"$lr1" USER NOT FOUND..\a\n"
  fi
  echo -en $lc1"\n|"$lr1"+"$lc1"|"$w1" SEARCHING IN TWITTER...\a\n"
  curl -s -H "Accept-Language: en" "https://www.twitter.com/${target}" -L | grep "(@${target}) | Twitter" &>/dev/null
  if [ $? -eq 0 ]
  then
    echo -en $lg1"\n|"$ly1"+"$lg1"|"$w1" USER FOUND ${lg1}@${target} \a\n"
  else
    echo -en $lg1"\n|"$ly1"+"$lg1"|"$lr1" USER NOT FOUND..\a\n"
  fi
  echo -en $lc1"\n|"$lr1"+"$lc1"|"$w1" SEARCHING IN FACEBOOK...\a\n"
  check_face=$(curl -s "https://www.facebook.com/$target" -L -H "Accept-Language: en" | grep -o 'not found'; echo $?)
  if [[ $check_face == *'1'* ]]; then
  printf $lg1"\n|"$ly1"+"$lg1"|"$w1" USER FOUND "$lg1$target"\a\n"
  elif [[ $check_face == *'0'* ]]; then
  printf "\e[1;92m|\e[1;93m+\e[1;92m|\e[1;91m USER NOT FOUND..\e[0m\n"
  fi
}
search
echo " "
echo -en $lg1"[][][][][][][][][][][][][][] \n"
