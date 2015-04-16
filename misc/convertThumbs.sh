#!/bin/bash -x
#
# @author Jian Zhao <boborabit@gmail.com>
#
# @description Convert Image thumbnails.
#
# @usage 
#   
#    ./convertThumbs.sh {orignalImageAbsolutePath} {thumbnailWidth}
#
#    example:     ./convertThumbs.sh /Users/jianzhao/test/Original 180
#                         will create a folder /Users/jianzhao/test/Thumbs180 with thumbnails.

[ $# -neq 2 ] && exit "need 2 arguments"

#remove trailing slash
function rightTrimSlash() {
    local folder=$1
    if [ ${folder:$((-1)):1} == "/" ]; then
        length=$(( ${#folder} -1))
        folder=${folder:0:$length}
    fi
    echo $folder
}

folder=$(rightTrimSlash $1)
width=$2

[ ! -d $folder ] && exit "$folder not found"

cd $folder
cd ..
targetfolder="$(pwd)/Thumbs${width}"
[ ! -d $targetfolder ] && mkdir $targetfolder

mogrify -path "$targetfolder" -resize $width "$folder/*.jpg"