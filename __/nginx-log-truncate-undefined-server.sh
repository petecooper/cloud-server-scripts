#!/bin/bash
if \
    [[ -s /etc/nginx-nginx-log-dir-base ]] \
; then \
    nginx_nginx_log_dir_base="$(< /etc/nginx-nginx-log-dir-base)" \
    && sudo truncate -s0 \
    "$nginx_nginx_log_dir_base"/log/nginx/nginx/live/undefined-server/*.log \
; else \
    echo 'Check `/etc/nginx-nginx-log-dir-base`.' \
; fi
