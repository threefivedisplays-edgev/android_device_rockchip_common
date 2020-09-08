#!/bin/bash
PROJECT_PATH=`pwd`
cd RKTools/linux/Linux_Pack_Firmware/rockdev/
./mkupdate_rk3399.sh
cd $PROJECT_PATH
mv RKTools/linux/Linux_Pack_Firmware/rockdev/update.img . 
