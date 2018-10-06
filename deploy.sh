#!/bin/sh

jekyll build
rsync -apv _site/* root@web.abhas.in:/home/abhas/abhas.io/

