#!/usr/bin/python3
#SPDX-FileCopyrightText: 2023 Shusuke Osawa hakuno0040@gmail.com
#SPDX-License-Identifier: BSD-3-Clause
import sys

ans=0
for line in sys.stdin:
    try:
        ans+=int(line)
    except:
        ans+=float(line)

print(ans)
