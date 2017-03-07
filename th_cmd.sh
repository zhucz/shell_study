#!/bin/sh
testing=$(date)
echo "the date and time are: " $testing

today=$(date +%y%m%d)
ls /usr/bin -al > log.$today


# 1 -------------  数学计算

var1=$(echo "scale=4; 3.44/5" | bc)
echo The answer is $var1

var1=10.46
var2=43.67
var3=33.2
var4=71
var5=$(bc << EOF
scale=4
a1=($var1 * $var2)
b1=($var3 * $var4)
a1 + b1
EOF
)
echo the fianl answe for this mess is $var5

# 2 -------------  使用结构化命令
if pwd
then
	echo "Ti worked"
fi


if pwd ;then
	echo "Ti worked"
fi

testuser=Nosuchuser
if grep $testuser /etc/passwd
then
	echo "The bash files for user $testuser are :"
	ls -a /home/$testuser/ .b*
	echo
else
	echo "The user $testuser does not exit on this system"
	echo
fi

The user Nosuchuser does not exist on this system.

# 3 ------------  case
#using the case command
case $USER in
zcz|lml)
	echo "welcom ,$USER"
	echo "Please enjoy your visit";;
testing)
	echo "special testing account";;
jessica)
	echo "Do not forget to log off when you are done";;
*)
	echo "sorry,you are not allowed here";;
esac

































