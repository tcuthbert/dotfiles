#!/bin/bash

/usr/bin/VBoxClient-all
/usr/bin/compton -cGb &
exec startfluxbox
