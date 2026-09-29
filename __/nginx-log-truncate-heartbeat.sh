#!/bin/bash
if \
    [[ -s /etc/nginx-nginx-log-dir-base ]] \
; then \
    nginx_nginx_log_dir_base="$(< /etc/nginx-nginx-log-dir-base)" \
    && echo '=> Before...' \
    && sudo /usr/bin/tree \
    -aghpu \
    --dirsfirst \
    --du \
    "$nginx_nginx_log_dir_base"/log/nginx/nginx/live/heartbeat/ \
    && sudo truncate -s0 \
    "$nginx_nginx_log_dir_base"/log/nginx/nginx/live/heartbeat/*.log \
    && echo '=> After...' \
    && sudo /usr/bin/tree \
    -aghpu \
    --dirsfirst \
    --du \
    "$nginx_nginx_log_dir_base"/log/nginx/nginx/live/heartbeat/ \
; else \
    echo 'Check `/etc/nginx-nginx-log-dir-base`.' \
; fi
