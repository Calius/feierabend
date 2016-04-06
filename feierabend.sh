#!/bin/sh

# ----------------------------------------------------------------------------
# "THE BEER-WARE LICENSE" (Revision 42):
# <christi@nlew.in> wrote this file.  As long as you retain this notice you
# can do whatever you want with this stuff. If we meet some day, and you think
# this stuff is worth it, you can buy me a beer in return.   Christian Lewin
#  ----------------------------------------------------------------------------

ids=($(vagrant global-status | grep running | awk {'print $1'}))

for i in "${ids[@]}"
do
   :
  echo "Shutting down $i"; vagrant halt $i
done

echo 'All boxes have been terminated. Have a nice evening... :-)'
