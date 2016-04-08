#!/bin/bash
for i in {0..773}
do
    number=`printf %04d ${i%.*}`
    url="http://fantasyland.info/comics/oots$number.jpg"
    wget -c -q "$url"
    echo "Downloading: $url"
done

