#! /bin/bash

DownloadSite=${1:-Gitee}

mkdir -p /tmp/4.1.kehou-2
case $DownloadSite in
    Github)
        wget -O /tmp/4.1.kehou-2/第四关.txt https://raw.githubusercontent.com/Shawney123/touge/main/Source/4.1.kehou-2/%E7%AC%AC%E5%9B%9B%E5%85%B3.txt
        wget -O /tmp/4.1.kehou-2/dbg.log  https://raw.githubusercontent.com/Shawney123/touge/main/Source/4.1.kehou-2/dbg.log
        ;;
    Gitee)
        wget -O /tmp/4.1.kehou-2/第四关.txt https://gitee.com/shawney123/touge/raw/main/Source/4.1.kehou-2/%E7%AC%AC%E5%9B%9B%E5%85%B3.txt
        wget -O /tmp/4.1.kehou-2/dbg.log https://gitee.com/shawney123/touge/raw/main/Source/4.1.kehou-2/dbg.log
        ;;
    *)
        echo "Unknown download site specified: $DownloadSite"
        echo "未知下载站点: $DownloadSite"
        exit 1
        ;;
esac
mv -f /tmp/4.1.kehou-2/第四关.txt /data/workspace/myshixun/第四关.txt
mv -f /tmp/4.1.kehou-2/dbg.log /root/dbg.log

exit 0