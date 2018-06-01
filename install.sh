#!/bin/bash

#*************************************************************************
#	> File Name: install.sh
#	> Author:一叶韶华舞流年 
#	> Created Time: 2018年04月14日 星期六 07时32分30秒
#************************************************************************/

for i in $(ls | grep tar.xz)
do
    tar -Jxvf $i
done

cd Sierra-gtk-theme/
chmod +x Install
./Install
cd ..

mv -f  capitaine-cursors /usr/share/icons/ 
mv -f MacOSX /usr/share/icons/
mv -f MacOSX-dark /usr/share/icons/
mv -f /usr/share/icons/default/index.theme /usr/share/icons/default/index.theme.bak

echo "[Icon Theme]
Inherits=capitaine-cursors" > /usr/share/icons/default/index.theme

