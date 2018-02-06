#!/bin/bash

# Install updated version of home assistant in the virtual environment
# ========================================================
# Author: Arno Jansen <@aetjansen>
# Original Author: Carlo Costanzo <@CCOSTAN>
#
#  These scripts are run from /home/pi 

cd /home/homeassistant/.homeassistant
source /srv/homeassistant/bin/activate

echo "Processing update"
pip3 install --upgrade homeassistant

hass --script check_config
exit
