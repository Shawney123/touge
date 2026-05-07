#! /bin/bash

DownloadSite=${1:-Gitee}

mkdir -p /tmp/4.1.ketang-2
case $DownloadSite in
    Github)
        wget -O /tmp/4.1.ketang-2/第二关.txt https://raw.githubusercontent.com/Shawney123/touge/main/Source/4.1.ketang-2/%E7%AC%AC%E4%BA%8C%E5%85%B3.txt
        wget -O /tmp/4.1.ketang-2/gdb.log  https://raw.githubusercontent.com/Shawney123/touge/main/Source/4.1.ketang-2/gdb.log
        ;;
    Gitee)
        wget -O /tmp/4.1.ketang-2/第二关.txt https://gitee.com/shawney123/touge/raw/main/Source/4.1.ketang-2/%E7%AC%AC%E4%BA%8C%E5%85%B3.txt
        wget -O /tmp/4.1.ketang-2/gdb.log https://gitee.com/shawney123/touge/raw/main/Source/4.1.ketang-2/gdb.log
        ;;
    *)
        echo "Unknown download site specified: $DownloadSite"
        echo "未知下载站点: $DownloadSite"
        exit 1
        ;;
esac
mv -f /tmp/4.1.ketang-2/第二关.txt /data/workspace/myshixun/第二关.txt
mv -f /tmp/4.1.ketang-2/gdb.log /root/gdb.log

exit 0