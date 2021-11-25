#!/bin/sh -e
IMG_FILE=/tmp/screen_locked.png

rm -f ${IMG_FILE}
# screenshot!
scrot ${IMG_FILE}

# Blur it
#convert ${IMG_FILE} -blur 0x6 ${IMG_FILE}
convert ${IMG_FILE} -scale 10% -scale 1000% ${IMG_FILE}

# Lock screen with blurred image
i3lock -e -n -i ${IMG_FILE}
