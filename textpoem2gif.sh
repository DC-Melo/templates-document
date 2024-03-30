text1="高梧百尺夜苍苍，"
text2="乱扫秋星落晓霜。"
text3="工作了工作作了，"
text4="测试本文文文文。"
text5="--作者"
font=/usr/local/4T/fonts/印品抹茶体.ttf
td=$(mktemp -d)
convert \
	-font "${font}" \
	-fill white -stroke white -strokewidth 1 -gravity center -pointsize 20 label:"${text1}" \
	-fill white -stroke white -strokewidth 1 -gravity center -pointsize 20 label:"${text2}" \
	-fill white -stroke white -strokewidth 1 -gravity center -pointsize 20 label:"${text3}" \
	-fill white -stroke white -strokewidth 1 -gravity center -pointsize 20 label:"${text4}" \
	-fill white -stroke white -strokewidth 1 -gravity East -pointsize 20 label:"${text5}" \
	-append \
	${td}/outfile0.png
convert \
	-font "${font}" \
	-fill black -stroke black -strokewidth 1 -gravity center -pointsize 20 label:"${text1}" \
	-fill white -stroke white -strokewidth 1 -gravity center -pointsize 20 label:"${text2}" \
	-fill white -stroke white -strokewidth 1 -gravity center -pointsize 20 label:"${text3}" \
	-fill white -stroke white -strokewidth 1 -gravity center -pointsize 20 label:"${text4}" \
	-fill white -stroke white -strokewidth 1 -gravity East -pointsize 20 label:"${text5}" \
	-append \
	${td}/outfile1.png
convert \
	-font "${font}" \
	-fill black -stroke black -strokewidth 1 -gravity center -pointsize 20 label:"${text1}" \
	-fill black -stroke black -strokewidth 1 -gravity center -pointsize 20 label:"${text2}" \
	-fill white -stroke white -strokewidth 1 -gravity center -pointsize 20 label:"${text3}" \
	-fill white -stroke white -strokewidth 1 -gravity center -pointsize 20 label:"${text4}" \
	-fill white -stroke white -strokewidth 1 -gravity East -pointsize 20 label:"${text5}" \
	-append \
	${td}/outfile2.png
convert \
	-font "${font}" \
	-fill black -stroke black -strokewidth 1 -gravity center -pointsize 20 label:"${text1}" \
	-fill black -stroke black -strokewidth 1 -gravity center -pointsize 20 label:"${text2}" \
	-fill black -stroke black -strokewidth 1 -gravity center -pointsize 20 label:"${text3}" \
	-fill white -stroke white -strokewidth 1 -gravity center -pointsize 20 label:"${text4}" \
	-fill white -stroke white -strokewidth 1 -gravity East -pointsize 20 label:"${text5}" \
	-append \
	${td}/outfile3.png
convert \
	-font "${font}" \
	-fill black -stroke black -strokewidth 1 -gravity center -pointsize 20 label:"${text1}" \
	-fill black -stroke black -strokewidth 1 -gravity center -pointsize 20 label:"${text2}" \
	-fill black -stroke black -strokewidth 1 -gravity center -pointsize 20 label:"${text3}" \
	-fill black -stroke black -strokewidth 1 -gravity center -pointsize 20 label:"${text4}" \
	-fill white -stroke white -strokewidth 1 -gravity East -pointsize 20 label:"${text5}" \
	-append \
	${td}/outfile4.png
convert \
	-font "${font}" \
	-fill black -stroke black -strokewidth 1 -gravity center -pointsize 20 label:"${text1}" \
	-fill black -stroke black -strokewidth 1 -gravity center -pointsize 20 label:"${text2}" \
	-fill black -stroke black -strokewidth 1 -gravity center -pointsize 20 label:"${text3}" \
	-fill black -stroke black -strokewidth 1 -gravity center -pointsize 20 label:"${text4}" \
	-fill black -stroke black -strokewidth 1 -gravity East -pointsize 20 label:"${text5}" \
	-append \
	${td}/outfile5.png
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
else
	mogrify -coalesce -fuzz 1% -resize 500x -layers Optimize ${td}/outfile.gif
fi
echo ${td}/outfile.gif
