#! /bin/bash

DownloadSite=${1:-Gitee}

mkdir -p /tmp/4.1.kehou-1
case $DownloadSite in
    Github)
        wget -O /tmp/4.1.kehou-1/第三关.txt https://raw.githubusercontent.com/Shawney123/touge/main/Source/4.1.kehou-1/%E7%AC%AC%E4%B8%89%E5%85%B3.txt
        wget -O /tmp/4.1.kehou-1/gdb.log  https://raw.githubusercontent.com/Shawney123/touge/main/Source/4.1.kehou-1/gdb.log
        ;;
    Gitee)
        wget -O /tmp/4.1.kehou-1/第三关.txt https://gitee.com/shawney123/touge/raw/main/Source/4.1.kehou-1/%E7%AC%AC%E4%B8%89%E5%85%B3.txt
        wget -O /tmp/4.1.kehou-1/gdb.log https://gitee.com/shawney123/touge/raw/main/Source/4.1.kehou-1/gdb.log
        ;;
    *)
        echo "Unknown download site specified: $DownloadSite"
        echo "未知下载站点: $DownloadSite"
        exit 1
        ;;
esac
mv -f /tmp/4.1.kehou-1/第三关.txt /data/workspace/myshixun/第三关.txt
mv -f /tmp/4.1.kehou-1/gdb.log /root/gdb.log

exit 0