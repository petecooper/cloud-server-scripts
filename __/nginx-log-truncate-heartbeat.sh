#!/bin/bash
if \
    [[ -s /etc/nginx-nginx-log-dir-base ]] \
; then \
    nginx_nginx_log_dir_base="$(< /etc/nginx-nginx-log-dir-base)" \
    && sudo multitail \
    "$nginx_nginx_log_dir_base"/log/nginx/nginx/live/heartbeat/*.log \
; else \
    echo 'Check `/etc/nginx-nginx-log-dir-base`.' \
; fi
