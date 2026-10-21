#!/bin/bash
if \
    [ -f "/usr/sbin/nginx" ] \
; then \
    sudo /usr/sbin/nginx -t \
; fi \
&& if \
    [ -f "/usr/sbin/nginx/nginx" ] \
; then \
    sudo /usr/sbin/nginx/nginx -t \
; fi
