#!/bin/zsh
ids=($(vagrant global-status | grep running | awk {'print $1'}))

for i in "${ids[@]}"
do
   :
  echo "Shutting down $i"; vagrant halt $i
done

echo 'All boxes have been terminated. Have a nice evening... :-)'
