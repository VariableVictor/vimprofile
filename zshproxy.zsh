#!/bin/zsh

git config --global https.proxy socks5h://LANUser:LANPass@`cat /etc/resolv.conf | grep nameserver | awk '{print $2}'`:5084
git config --global http.proxy socks5h://LANUser:LANPass@`cat /etc/resolv.conf | grep nameserver | awk '{print $2}'`:5084
