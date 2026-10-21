#!/bin/bash
sudo journalctl \
--disk-usage \
&& sudo journalctl \
--rotate \
&& sudo journalctl \
--vacuum-time=1s
