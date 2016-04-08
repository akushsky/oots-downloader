#!/bin/bash
for i in {1..1032}
do
    number=`printf %04d ${i%.*}`
    url="http://www.giantitp.com/comics/oots$number.html"
    image_url="http://www.giantitp.com/".`curl -s "$url" | grep /comics/images/ | cut -d'"' -f4`
    wget -c -q -O "oots$number.gif" $image_url
    echo "Downloading: $image_url"
done

