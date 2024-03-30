unset stroke
url="https://gimg2.baidu.com/image_search/src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fq_70%2Cc_zoom%2Cw_640%2Fimages%2F20190730%2F6b675c4a22a9465a8122ad57d43043eb.gif&refer=http%3A%2F%2F5b0988e595225.cdn.sohucs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1652366044&t=65a0e8b47b5ef094ecf4ac333fe0fed1"
twords="美女，谢谢你的红包"
url="https://gimg2.baidu.com/image_search/src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fq_70%2Cc_zoom%2Cw_640%2Fimages%2F20180622%2Fc657bc1805a34ef98cf8b80557ab7b6f.gif&refer=http%3A%2F%2F5b0988e595225.cdn.sohucs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1652366140&t=3ee0f2af6a94c0a97cf5f5602ad078ed"
twords="磕头，谢谢你的红包"
url="https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.soogif.com%2FhgtW4EvFuOqxqNR7Zghfsj3JJucRkyZJ.gif&refer=http%3A%2F%2Fimg.soogif.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1652366319&t=6d737bdc83acd966e4623e42696319ba"
twords="熊猫欢迎新朋友"
url="https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwx3.sinaimg.cn%2Flarge%2Fceeb653ely1g5g2ia9qxxg20dc0dcn3s.gif&refer=http%3A%2F%2Fwx3.sinaimg.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1652366387&t=804b18c2becfbdbfc7fffd34230d2cb7"
twords="熊猫鲜花欢迎新朋友"
url="https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwx3.sinaimg.cn%2Flarge%2Fceeb653ely1g5g2ia9qxxg20dc0dcn3s.gif&refer=http%3A%2F%2Fwx3.sinaimg.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1652366387&t=804b18c2becfbdbfc7fffd34230d2cb7"
# twords=""
bwords=""
lwords=""
rwords=""
percent=${percent:-75}
color=${color:-red}
# stroke=${stroke:-yellow}
font=/usr/local/4T/fonts/印品抹茶体.ttf
trasher rm outfile*.png
if echo "${url}" | grep -q "http"; then
	wget --user-agent="Mozilla/5.0" "${url}" -O infile.gif
	input="infile.gif"
fi

strSize="\`file infile.gif\`"
echo $strSize
pat='([0-9]+) x ([0-9]+)'
[[ $strSize =~ $pat ]] # $pat must be unquoted
echo "${BASH_REMATCH[0]}"
echo "${BASH_REMATCH[1]}"
echo "${BASH_REMATCH[2]}"
dcSize=$((${BASH_REMATCH[1]} / 10))
dcAnno=$((${BASH_REMATCH[1]} / 100))
tlen=$(echo ${twords} | wc -c)
blen=$(echo ${bwords} | wc -c)
llen=$(echo ${lwords} | wc -c)
rlen=$(echo ${rwords} | wc -c)
echo "A:${twords}   V:${bwords}   <:${lwords}   >:${rwords}"
tpointSize=$((${BASH_REMATCH[1]} * ${percent} / 30 / ${tlen}))
bpointSize=$((${BASH_REMATCH[1]} * ${percent} / 30 / ${blen}))
lpointSize=$((${BASH_REMATCH[2]} * ${percent} / 30 / ${llen}))
rpointSize=$((${BASH_REMATCH[2]} * ${percent} / 30 / ${rlen}))
echo $dcSize
echo $dcAnno
echo $tpointSize

# convert -pointsize 19 -fill black -font ${font} -weight bolder -gravity southeast  -annotate +5+5 "DC"  ${input} ${output}
convert -background none -pointsize ${dcSize} -fill grey -font ${font} -weight bolder -gravity southeast -annotate +$dcAnno+$dcAnno "DC" ${input} outfile.gif

if [[ -z ${stroke} ]]; then
	[ -n "$twords" ] && mogrify -pointsize ${tpointSize} -fill "${color}" -font "${font}" -weight bolder -gravity north -annotate +5+5 "${twords}" outfile.gif
	[ -n "$bwords" ] && mogrify -pointsize ${bpointSize} -fill "${color}" -font "${font}" -weight bolder -gravity south -annotate +5+5 "${bwords}" outfile.gif
	[ -n "$lwords" ] && mogrify -pointsize ${lpointSize} -fill "${color}" -font "${font}" -weight bolder -gravity northwest -annotate +5+5 "${lwords}" outfile.gif
	[ -n "$rwords" ] && mogrify -pointsize ${rpointSize} -fill "${color}" -font "${font}" -weight bolder -gravity northeast -annotate +5+5 "${rwords}" outfile.gif
else
	[ -n "$twords" ] && mogrify -pointsize ${tpointSize} -fill "${color}" -stroke "${stroke}" -strokewidth 1 -font "${font}" -weight bolder -gravity north -annotate +5+5 "${twords}" outfile.gif
	[ -n "$bwords" ] && mogrify -pointsize ${bpointSize} -fill "${color}" -stroke "${stroke}" -strokewidth 1 -font "${font}" -weight bolder -gravity south -annotate +5+5 "${bwords}" outfile.gif
	[ -n "$lwords" ] && mogrify -pointsize ${lpointSize} -fill "${color}" -stroke "${stroke}" -strokewidth 1 -font "${font}" -weight bolder -gravity northwest -annotate +5+5 "${lwords}" outfile.gif
	[ -n "$rwords" ] && mogrify -pointsize ${rpointSize} -fill "${color}" -stroke "${stroke}" -strokewidth 1 -font "${font}" -weight bolder -gravity northeast -annotate +5+5 "${rwords}" outfile.gif
fi
