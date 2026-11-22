#!/bin/bash
if \
    free | \
    awk '/^Swap:/ {exit !$2}' \
; then \
    echo 'Swap ready.' \
; else \
    echo 'Approximate system RAM (GB): '"$(grep MemTotal /proc/meminfo | \
    awk '{print $2}' | \
    xargs -I {} echo "scale=4; {}/1024^2" | \
    bc | \
    xargs printf "%.2f")" \
    && read -p 'Swapfile size with unit (e.g. 4G): ' swapfilesize \
    && sudo fallocate -l "$swapfilesize" /swapfile \
    && sudo chmod 600 /swapfile \
    && sudo mkswap /swapfile \
    && sudo swapon /swapfile --show \
    && sudo sh -c 'echo "/swapfile none swap sw 0 0" >> /etc/fstab' \
; fi \
&& sudo apt update \
&& sudo apt -y dist-upgrade \
&& sudo apt -y autoclean \
&& sudo apt -y clean \
&& sudo apt -y autoremove --purge \
&& sudo reboot
