text1="哥哥"
text2="成了我的培训专场了"
text3="大家集思广益"
text4="共同提高"
text5="共同提高"
size1=120
size2=100
size3=120
size4=200
size5=200
font=/usr/local/4T/fonts/印品抹茶体.ttf
td=$(mktemp -d)
#0 convert \
#0 -font "${font}" \
#1 -fill white -stroke white -strokewidth 2 -gravity center -pointsize ${size1} label:"${text1}" \
#2 -fill white -stroke white -strokewidth 2 -gravity center -pointsize ${size2} label:"${text2}" \
#3 -fill white -stroke white -strokewidth 2 -gravity center -pointsize ${size3} label:"${text3}" \
#4 -fill white -stroke white -strokewidth 2 -gravity center -pointsize ${size4} label:"${text4}" \
#5 -fill white -stroke white -strokewidth 2 -gravity center -pointsize ${size5} label:"${text5}" \
#0 -append \
#0 ${td}/outfile05.png
#1 convert \
#1 -font "${font}" \
#1#a#A \(  \
#1 -fill black -stroke black -strokewidth 2 -gravity center -pointsize ${size1} label:"${text1}" \
#1#a#A -fill red   -stroke red   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#2#b#B \(  \
#2 -fill white -stroke white -strokewidth 2 -gravity center -pointsize ${size2} label:"${text2}" \
#2#b#B -fill white   -stroke white   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#3#c#C \(  \
#3 -fill white -stroke white -strokewidth 2 -gravity center -pointsize ${size3} label:"${text3}" \
#3#c#C -fill white   -stroke white   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#4#d#D \(  \
#4 -fill white -stroke white -strokewidth 2 -gravity center -pointsize ${size4} label:"${text4}" \
#4#d#D -fill white   -stroke white   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#5#e#E \(  \
#5 -fill white -stroke white -strokewidth 2 -gravity center -pointsize ${size5} label:"${text5}" \
#5#e#E -fill white   -stroke white   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#1 -append \
#1 ${td}/outfile15.png
#2 convert \
#2 -font "${font}" \
#2#a#A \(  \
#2 -fill black -stroke black -strokewidth 2 -gravity center -pointsize ${size1} label:"${text1}" \
#2#a#A -fill red   -stroke red   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#2#b#B \(  \
#2 -fill black -stroke black -strokewidth 2 -gravity center -pointsize ${size2} label:"${text2}" \
#2#b#B -fill red   -stroke red   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#3#c#C \(  \
#3 -fill white -stroke white -strokewidth 2 -gravity center -pointsize ${size3} label:"${text3}" \
#3#c#C -fill white   -stroke white   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#4#d#D \(  \
#4 -fill white -stroke white -strokewidth 2 -gravity center -pointsize ${size4} label:"${text4}" \
#4#d#D -fill white   -stroke white   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#5#e#E \(  \
#5 -fill white -stroke white -strokewidth 2 -gravity center -pointsize ${size5} label:"${text5}" \
#5#e#E -fill white   -stroke white   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#2 -append \
#2 ${td}/outfile25.png
#3 convert \
#3 -font "${font}" \
#3#a#A \(  \
#3 -fill black -stroke black -strokewidth 2 -gravity center -pointsize ${size1} label:"${text1}" \
#3#a#A -fill red   -stroke red   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#3#b#B \(  \
#3 -fill black -stroke black -strokewidth 2 -gravity center -pointsize ${size2} label:"${text2}" \
#3#b#B -fill red   -stroke red   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#3#c#C \(  \
#3 -fill black -stroke black -strokewidth 2 -gravity center -pointsize ${size3} label:"${text3}" \
#3#c#C -fill red   -stroke red   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#4#d#D \(  \
#4 -fill white -stroke white -strokewidth 2 -gravity center -pointsize ${size4} label:"${text4}" \
#4#d#D -fill white   -stroke white   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#5#e#E \(  \
#5 -fill white -stroke white -strokewidth 2 -gravity center -pointsize ${size5} label:"${text5}" \
#5#e#E -fill white   -stroke white   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#3 -append \
#3 ${td}/outfile35.png
#4 convert \
#4 -font "${font}" \
#4#a#A \(  \
#4 -fill black -stroke black -strokewidth 2 -gravity center -pointsize ${size1} label:"${text1}" \
#4#a#A -fill red   -stroke red   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#4#b#B \(  \
#4 -fill black -stroke black -strokewidth 2 -gravity center -pointsize ${size2} label:"${text2}" \
#4#b#B -fill red   -stroke red   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#4#c#C \(  \
#4 -fill black -stroke black -strokewidth 2 -gravity center -pointsize ${size3} label:"${text3}" \
#4#c#C -fill red   -stroke red   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#4#d#D \(  \
#4 -fill black -stroke black -strokewidth 2 -gravity center -pointsize ${size4} label:"${text4}" \
#4#d#D -fill red   -stroke red   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#5#e#E \(  \
#5 -fill white -stroke white -strokewidth 2 -gravity center -pointsize ${size5} label:"${text5}" \
#5#e#E -fill white   -stroke white   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#4 -append \
#4 ${td}/outfile45.png
#5 convert \
#5 -font "${font}" \
#5#a#A \(  \
#5 -fill black -stroke black -strokewidth 2 -gravity center -pointsize ${size1} label:"${text1}" \
#5#a#A -fill red   -stroke red   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#5#b#B \(  \
#5 -fill black -stroke black -strokewidth 2 -gravity center -pointsize ${size2} label:"${text2}" \
#5#b#B -fill red   -stroke red   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#5#c#C \(  \
#5 -fill black -stroke black -strokewidth 2 -gravity center -pointsize ${size3} label:"${text3}" \
#5#c#C -fill red   -stroke red   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#5#d#D \(  \
#5 -fill black -stroke black -strokewidth 2 -gravity center -pointsize ${size4} label:"${text4}" \
#5#d#D -fill red   -stroke red   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#5#e#E \(  \
#5 -fill black -stroke black -strokewidth 2 -gravity center -pointsize ${size5} label:"${text5}" \
#5#e#E -fill red   -stroke red   -strokewidth 10 -draw "line 20,100 1000,20" \)                 \
#5 -append \
#5 ${td}/outfile55.png
#!@ convert \
#!@ -font "${font}" \
#1#!@#A -fill white -stroke white -strokewidth 2 -gravity center -pointsize ${size1} label:"${text1}" \
#1#!@#a -fill black -stroke black -strokewidth 2 -gravity center -pointsize ${size1} label:"${text1}" \
#2#!@#A -fill white -stroke white -strokewidth 2 -gravity center -pointsize ${size2} label:"${text2}" \
#2#!@#b -fill black -stroke black -strokewidth 2 -gravity center -pointsize ${size2} label:"${text2}" \
#3#!@#B -fill white -stroke white -strokewidth 2 -gravity center -pointsize ${size3} label:"${text3}" \
#3#!@#c -fill black -stroke black -strokewidth 2 -gravity center -pointsize ${size3} label:"${text3}" \
#4#!@#C -fill white -stroke white -strokewidth 2 -gravity center -pointsize ${size4} label:"${text4}" \
#4#!@#d -fill black -stroke black -strokewidth 2 -gravity center -pointsize ${size4} label:"${text4}" \
#5#!@#D -fill white -stroke white -strokewidth 2 -gravity center -pointsize ${size5} label:"${text5}" \
#5#!@#e -fill black -stroke black -strokewidth 2 -gravity center -pointsize ${size5} label:"${text5}" \
#!@ -append \
#a#A ${td}/outfile11.png
#b#B ${td}/outfile21.png
#c#C ${td}/outfile31.png
#d#D ${td}/outfile41.png
#e#E ${td}/outfile51.png
# mogrify -fuzz 20% -transparent white ${td}/outfile5.png
mogrify -alpha set -channel RGBA -fuzz 20% -fill "rgb(255,255,255)" -draw "color 1,1 replace" -transparent white *.png
convert -delay 200 ${td}/outfile*.png -loop 0 ${td}/outfile.gif

strSize=$(file ${td}/outfile.gif)
echo $strSize
pat='([0-9]+) x ([0-9]+)'
[[ $strSize =~ $pat ]] # $pat must be unquoted
echo "${BASH_REMATCH[0]}"
echo "${BASH_REMATCH[1]}"
echo "${BASH_REMATCH[2]}"
if [[ ${BASH_REMATCH[2]} -gt ${BASH_REMATCH[1]} ]]; then
	mogrify -coalesce -fuzz 1% -resize x500 -layers Optimize ${td}/outfile.gif
	# convert -delay 200 ${td}/outfile*.png -loop 0 -resize x500  ${td}/outfile.gif
else
	mogrify -coalesce -fuzz 1% -resize 500x -layers Optimize ${td}/outfile.gif
	# convert -delay 200 ${td}/outfile*.png -loop 0 -resize 500x  ${td}/outfile.gif
fi
echo ${td}/outfile.gif
