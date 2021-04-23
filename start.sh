#!/bin/bash
LOG=/var/log/start_cont$(date +%y_%m_%d_%H_%M).log
INSTALL_DIR=/opt/rb
DEBIAN_FRONTEND=noninteractive
cd $INSTALL_DIR >> $LOG
echo $(date) "Staring container application.... "  >> $LOG
./justin -c ./justin.yaml >> $LOG
