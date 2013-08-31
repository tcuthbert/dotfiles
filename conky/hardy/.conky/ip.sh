#!/bin/bash
# eigene öffentliche ip anzeigen

#wget http://checkip.dyndns.org/ -q -O - |
#grep -Eo '\<[[:digit:]]{1,3}(\.[[:digit:]]{1,3}){3}\>'
wget http://www.checkip.org/ -q -O - |
grep -Eo -m1 '\<[[:digit:]]{1,3}(\.[[:digit:]]{1,3}){3}\>'
