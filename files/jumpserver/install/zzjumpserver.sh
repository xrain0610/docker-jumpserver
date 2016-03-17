#!/bin/sh
if [ "$USER" != "admin" ] && [ "$USER" != "root" ];then
        python /jumpserver/connect.py
        exit
fi
