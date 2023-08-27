imageMagickExists=$(sh ~/PersonalScripts/checkForPackage.sh imagemagick)
fehExists=$(sh ~/PersonalScripts/checkForPackage.sh 'feh')

while true
do
	time=$(date "+%H:%M:%S")
	convert ~/Pictures/temp.jpg -gravity North-West -pointsize 60 -annotate +100+100 $time ~/Pictures/background.jpg 
	feh --bg-fill ~/Pictures/background.jpg
	sleep 5
done
