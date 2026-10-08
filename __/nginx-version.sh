#!/bin/bash
if \
    [ -f "/usr/sbin/nginx" ] \
; then \
    sudo /usr/sbin/nginx -v \
; fi \
&& if \
    [ -f "/usr/sbin/nginx/nginx" ] \
; then \
    sudo /usr/sbin/nginx/nginx -v \
; fi \
&& if \
    [ -f "/usr/sbin/nginx/nginx/nginx" ] \
; then \
    sudo /usr/sbin/nginx/nginx/nginx -v \
; fi

