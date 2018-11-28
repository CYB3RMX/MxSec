#!/usr/bin/python

import os
print("\u001b[91m ")
print("[!] ALERT THIS PROGRAM NEEDS SOME RESOURCES")
inst=str(input("DO YOU WANNA INSTALL [Y/N] ?: "))
if inst=='Y' and inst=='y':
   os.system('apt-get install nmap')
   os.system('apt-get install wafw00f')
   os.system('pacman -S nmap && pacman -S wafw00f')
   os.system('yum install nmap && yum install wafw00f')
else:
   os.system('clear')
screen='''
                      __  ____   __
                     |  \/  \ \ / /
                     | \  / |\ V /
          _____      | |\/| | > <    _ _
         / ____|     | |  | |/ . \  (_) |
        | (___   ___ |_|_ |_/_/ \_\_ _| |_ _   _
         \___ \ / _ \/ __| | | | '__| | __| | | |
         ____) |  __/ (__| |_| | |  | | |_| |_| |
  ______|_____/ \___|\___|\__,_|_|  |_|\__|\__, |  _
 |  ____|                                   __/ | | |
 | |__ _ __ __ _ _ __ ___   _____      ____|___/__| | __
 |  __| '__/ _` | '_ ` _ \ / _ \ \ /\ / / _ \| '__| |/ /
 | |  | | | (_| | | | | | |  __/\ V  V / (_) | |  |   <
 |_|  |_|  \__,_|_| |_| |_|\___| \_/\_/ \___/|_|  |_|\_\\

    See other repositories at: https://github.com/CYB3RMX

           Type >help< to see available commands
'''
#---------------------------------#
class frame():
     def commlist():
        try:
            print("AVAILABLE COMMANDS:")
            print(" ")
            print("atk => PORT ATTACKER")
            print("cl => CLEAR SCREEN")
            print("fs => FIREWALL SCANNER")
            print("help => SHOW THIS SCREEN")
            print("hreq => GET HTTP HEADERS")
            print("ps => PORT SCANNER")
            print("uh => USER HUNTER")
            print("up => UPDATE MxSec")
            print("quit => EXIT PROGRAM")
            frame.console()
        except KeyboardInterrupt:
            print("[*] GOODBYE...")
     def fscanner():
        try:
            os.system('clear')
            os.system('bash firewallhunter.sh')
            frame.console()
        except KeyboardInterrupt:
            print("[*] GOODBYE...")
     def exp():
        try:
            os.system('clear')
            os.system('bash nscript.sh')
            frame.console()
        except KeyboardInterrupt:
            print("[*] GOODBYE...")
     def httpreq():
        try:
            os.system('clear')
            os.system('bash httpreq.sh')
            frame.console()
        except KeyboardInterrupt:
            frame.console()
     def ps():
        try:
            os.system('clear')
            print("PORT SCANNER")
            psx=str(input("ENTER YOUR TARGET: "))
            os.system('nmap -Pn -sV -sT '+psx)
            frame.console()
        except KeyboardInterrupt:
            print("[*] GOODBYE...")
     def uh():
        try:
            os.system('clear')
            os.system('bash userHunter.sh')
            frame.console()
        except KeyboardInterrupt:
            print("[*] GOODBYE...")
     def up():
        try:
            os.system('clear')
            print("[+] UPDATING MxSec YOU HAVE 5 SEC.TO ABORT")
            os.system('sleep 5')
            print("[+] UPDATING STARTS...")
            os.system('cd ..')
            os.system('rm -rf MxSec')
            os.system('git clone https://github.com/CYB3RMX/MxSec')
            print("[*] UPDATE COMPLETE...")
        except KeyboardInterrupt:
            frame.console()
     def console():
        try:
            print(" ")
            com=str(input("[MxSec]> "))
            if com=='help':
              frame.commlist()
            elif com=='atk':
              frame.exp()
            elif com=='cl':
              os.system('clear')
              frame.console()
            elif com=='fs':
              frame.fscanner()
            elif com=='hreq':
              frame.httpreq()
            elif com=='ps':
              frame.ps()
            elif com=='up':
              frame.up()
            elif com=='uh':
              frame.uh()
            elif com=='quit':
              print("[*] GOODBYE...")
            else:
              print("[!] COMMAND NOT FOUND")
              frame.console()
        except KeyboardInterrupt:
            print("[*] GOODBYE...")
#-----------------------------------#
os.system('clear')
print("\u001b[92m\a ")
print(screen)
print("\u001b[0m ")
frame.console()
