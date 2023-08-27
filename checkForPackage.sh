package=$(pacman -Qi $1 | grep "error")

if [ -z $package ]; then
	echo ""
else
	sudo pacman -Syu
	echo $1 | xargs sudo pacman -S -y
fi
