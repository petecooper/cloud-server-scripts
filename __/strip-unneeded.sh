#!/bin/bash
find \
-exec sh -c \
'strip --strip-unneeded "$0"' \
{} \;
