#!/bin/sh

git push origin master
git push github master
jekyll build
rsync -apv _site/* root@web.abhas.in:/home/abhas/abhas.io/
