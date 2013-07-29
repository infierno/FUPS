#####################################
# This is a backup script intended  #
# to be used for mobile devices,    #
# such as USB keys or external HDD. #
#			---------    		    #
# This is a almost-non-interactive  #
# script. The user is expected to   #
# modify the script to adapt it for #
# its configuration. 		        #
#####################################

#!/bin/bash

echo "Type the reason of the backup"
printf " 1) Routine Backup\n 2) Just before a journey\n 3) Changing the device \n 4) Another Reason\n"
echo "Reason:"
read reason

case $reason in
1) echo "A routine backup happened the" `date "+%A %d %B %Y"` "at" `date +%R` >> backup_logs.txt
;;
2) echo "A backup happened just before a journey the " `date "+%A %d %B %Y"` "at" `date +%R` >> backup_logs.txt
;;
3) echo "The device changed the " `date "+%A %d %B %Y"` "at" `date +%R` >> backup_logs.txt
esac

######
# In this part, the user can keep the `read` command, or just define it for a special device, depending on how much devices
# are involved in the backup processus...
######

echo "Type the full path of the device"
read dev_path
echo "Type the full path of the backup directory"
read bckp_path
if [ -d $bckp_path ] 
then
	rsync -rhvbp --progress --backup-dir=previous_versions.dir  --compress-level=9 $path $bckp_path
else
mkdir $bckp_path
fi
# A 42nd line in this script. Because.
