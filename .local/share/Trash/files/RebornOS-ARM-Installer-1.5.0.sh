# This work is freely available per the GNU public license version 3 or later.

#! /bin/bash

function partition_OdroidN2() {
   parted --script -a minimal $devicename \
   mklabel msdos \
   unit mib \
   mkpart primary fat32 2MiB 258MiB \
   mkpart primary 258MiB $devicesize"MiB" \
   quit
}

function partition_RPi2() {
   parted --script -a minimal $devicename \
   mklabel msdos \
   unit mib \
   mkpart primary fat32 4MiB 262MiB \
   mkpart primary 262MiB $devicesize"MiB" \
   quit
}

function partition_RPi3() {
   parted --script -a minimal $devicename \
   mklabel msdos \
   unit mib \
   mkpart primary fat32 4MiB 262MiB \
   mkpart primary 262MiB $devicesize"MiB" \
   quit
}

function partition_RPi4() {
   parted --script -a minimal $devicename \
   mklabel msdos \
   unit mib \
   mkpart primary fat32 4MiB 262MiB \
   mkpart primary 262MiB $devicesize"MiB" \
   quit
}

function partition_OdroidXU4() {
   parted --script -a minimal $devicename \
   mklabel msdos \
   unit mib \
   mkpart primary 2MiB $devicesize"MiB" \
   quit
}

function install_OdroidN2_image() {
   wget http://os.archlinuxarm.org/os/ArchLinuxARM-odroid-n2-latest.tar.gz
   printf "\n\n${CYAN}Untarring the image...might take a few minutes.${NC}\n"
   bsdtar -xpf ArchLinuxARM-odroid-n2-latest.tar.gz -C MP2
   mv MP2/boot/* MP1
   dd if=MP1/u-boot.bin of=$devicename conv=fsync,notrunc bs=512 seek=1

   # for Odroid N2 ask if storage device is micro SD or eMMC
   whiptail  --title "RebornOS ARM Setup"  --yesno "                   Is the target device an eMMC card?" 7 80 
   user_confirmation="$?"
   if [ $user_confirmation == "0" ]
   then
      sed -i 's/mmcblk1/mmcblk0/g' MP2/etc/fstab
   fi    
}   # End of function install_OdroidN2_image

function install_RPi2_image() {
   case $devicemodel in
      RPi2)  wget https://osdn.net/dl/rebornos/Reborn-ARM-rpi-2-1.4.tar.gz
              printf "\n\n${CYAN}Untarring the image...may take a few minutes.${NC}\n"
              bsdtar -xpf Reborn-ARM-rpi-2-1.4.tar.gz -C MP2 ;;         
      RPi2)  wget https://osdn.net/dl/rebornos/Reborn-ARM-rpi-2-1.4.tar.gz
              printf "\n\n${CYAN}Untarring the image...may take a few minutes.${NC}\n"
              bsdtar -xpf Reborn-ARM-rpi-2-1.4.tar.gz -C MP2 ;;
   esac
   printf "\n\n${CYAN}syncing files...may take a few minutes.${NC}\n"
   sync
   mv MP2/boot/* MP1
   if [ $devicemodel == "RPi2" ] 
   then
      sed -i 's/mmcblk0/mmcblk1/g' MP2/etc/fstab
   fi
   
   if [ $devicemodel == "RPi2" ]
   then
      user_confirm=$(whiptail --title " Storage Device Selection" --menu --notags "\n             Choose Storage Device or Press right arrow twice to cancel" 17 100 2 \
         "0" "micro SD card" \
         "1" "External USB SSD enclosure" \
         3>&2 2>&1 1>&3)
      if [[ "$user_confirm" = "" ]]
      then
         printf "\n\nScript aborted by user..${NC}\n\n" && exit
      else
         if [ $user_confirm == "1" ]
         then
            sed -i 's/root=\/dev\/mmcblk0p2/root=\/dev\/sda2/g' MP1/cmdline.txt
            sed -i 's/mmcblk0p1/sda1/g' MP2/etc/fstab
         fi
      fi
   fi 
   
}  # End of function install_RPi2_image



function install_RPi3_image() {
   case $devicemodel in
      RPi3)  wget https://osdn.net/dl/rebornos/Reborn-ARM-rpi-2-1.4.tar.gz
              printf "\n\n${CYAN}Untarring the image...may take a few minutes.${NC}\n"
              tar -xzf Reborn-ARM-rpi-2-1.4.tar.gz -C MP2 ;;         
      RPi3b) wget https://osdn.net/dl/rebornos/Reborn-ARM-rpi-2-1.4.tar.gz
              printf "\n\n${CYAN}Untarring the image...may take a few minutes.${NC}\n"
              tar -xzf Reborn-ARM-rpi-2-1.4.tar.gz -C MP2 ;;
   esac
   printf "\n\n${CYAN}syncing files...may take a few minutes.${NC}\n"
   sync
   mv MP2/boot/* MP1
   if [ $devicemodel == "RPi3" ] 
   then
      sed -i 's/mmcblk0/mmcblk1/g' MP2/etc/fstab
   fi
   
   if [ $devicemodel == "RPi3b" ]
   then
      user_confirm=$(whiptail --title " Storage Device Selection" --menu --notags "\n             Choose Storage Device or Press right arrow twice to cancel" 17 100 2 \
         "0" "micro SD card" \
         "1" "External USB SSD enclosure" \
         3>&2 2>&1 1>&3)
      if [[ "$user_confirm" = "" ]]
      then
         printf "\n\nScript aborted by user..${NC}\n\n" && exit
      else
         if [ $user_confirm == "1" ]
         then
            sed -i 's/root=\/dev\/mmcblk0p2/root=\/dev\/sda2/g' MP1/cmdline.txt
            sed -i 's/mmcblk0p1/sda1/g' MP2/etc/fstab
         fi
      fi
   fi 
   
}  # End of function install_RPi3_image

function install_RPi4_image() {
   case $devicemodel in
      RPi4b)  wget https://osdn.net/dl/rebornos/Reborn-ARM-rpi-4-v2.0.tar.gz
              printf "\n\n${CYAN}Untarring the image...may take a few minutes.${NC}\n"
              sudo tar -xzf Reborn-ARM-rpi-4-v2.0.tar.gz -C MP2 ;;         
      RPi400) wget https://osdn.net/dl/rebornos/Reborn-ARM-rpi-4-v2.0.tar.gz
              printf "\n\n${CYAN}Untarring the image...may take a few minutes.${NC}\n"
              sudo tar -xzf Reborn-ARM-rpi-4-v2.0.tar.gz -C MP2 ;;
   esac
   printf "\n\n${CYAN}syncing files...may take a few minutes.${NC}\n"
   sync
   mv MP2/boot/* MP1
   if [ $devicemodel == "RPi4b" ] 
   then
      sed -i 's/mmcblk0/mmcblk1/g' MP2/etc/fstab
   fi
   
   if [ $devicemodel == "RPi400" ]
   then
      user_confirm=$(whiptail --title " Storage Device Selection" --menu --notags "\n             Choose Storage Device or Press right arrow twice to cancel" 17 100 2 \
         "0" "micro SD card" \
         "1" "External USB SSD enclosure" \
         3>&2 2>&1 1>&3)
      if [[ "$user_confirm" = "" ]]
      then
         printf "\n\nScript aborted by user..${NC}\n\n" && exit
      else
         if [ $user_confirm == "1" ]
         then
            sed -i 's/root=\/dev\/mmcblk0p2/root=\/dev\/sda2/g' MP1/cmdline.txt
            sed -i 's/mmcblk0p1/sda1/g' MP2/etc/fstab
         fi
      fi
   fi 
   
}  # End of function install_RPi4_image

function install_OdroidXU4_image() {
   wget http://os.archlinuxarm.org/os/ArchLinuxARM-odroid-xu3-latest.tar.gz
   printf "\n\n${CYAN}Untarring the image...might take a few minutes.${NC}\n"
   bsdtar -xpf ArchLinuxARM-odroid-xu3-latest.tar.gz -C MP1
   cd MP1/boot
   sh sd_fusing.sh $devicename
   cd ../..   
}   # End of function install_OdroidN2_image


function partition_format() {
   finished=1
   base_dialog_content="\nThe following storage devices were found\n\n$(lsblk -o NAME,MODEL,FSTYPE,SIZE,FSUSED,FSAVAIL,MOUNTPOINT)\n\n \
   Enter target device name without a partition designation (e.g. /dev/sda or /dev/mmcblk0):"
   dialog_content="$base_dialog_content"
   while [ $finished -ne 0 ]
   do
       devicename=$(whiptail --title "RebornOS ARM Setup - micro SD Configuration" --inputbox "$dialog_content" 27 115 3>&2 2>&1 1>&3)
      exit_status=$?
      if [ $exit_status == "1" ]; then           
         printf "\nScript aborted by user\n\n"
         exit
      fi
      if [[ ! -b "$devicename" ]]; then  
         dialog_content="$base_dialog_content\n    Not a listed block device, or not prefaced by /dev/ Try again."
      else   
         case $devicename in
            /dev/sd*)     if [[ ${#devicename} -eq 8 ]]; then 
                             finished=0
                          else
                             dialog_content="$base_dialog_content\n    Input improperly formatted. Try again."   
                          fi ;;
            /dev/mmcblk*) if [[ ${#devicename} -eq 12 ]]; then 
                             finished=0
                          else
                             dialog_content="$base_dialog_content\n    Input improperly formatted. Try again."   
                          fi ;;
         esac
      fi      
   done


   ##### Determine data device size in MiB and partition ###
   printf "\n${CYAN}Partitioning, & formatting storage device...${NC}\n"
   devicesize=$(fdisk -l | grep "Disk $devicename" | awk '{print $5}')
   ((devicesize=$devicesize/1048576))
   ((devicesize=$devicesize-1))  # for some reason, necessary for USB thumb drives
   printf "\n${CYAN}Partitioning storage device $devicename...${NC}\n"
   printf "\ndevicename = $devicename     devicesize=$devicesize\n" >> /root/rosARM.log

   # umount partitions before partitioning and formatting
   lsblk $devicename -o MOUNTPOINT | grep /run/media > mounts
   count=$(wc -l mounts | awk '{print $1}')
   if [ $count -gt 0 ]
   then
      for ((i = 1 ; i <= $count ; i++))
      do
         u=$(awk -v "x=$i" 'NR==x' mounts)
         umount $u
      done
   fi
   rm mounts
   case $devicemodel in
       RPi2|RPi2)      partition_RPi2 ;;
       RPi3|RPi3b)     partition_RPi3 ;;
       RPi4b | RPi400) partition_RPi4 ;;
   esac
   printf "\npartition name = $devicename\n\n" >> /root/rosARM.log
   printf "\n${CYAN}Formatting storage device $devicename...${NC}\n"
   printf "\n${CYAN}If \"/dev/sdx contains a ext4 file system Labelled XXXX\" or similar appears, Enter: y${NC}\n\n\n"

   if [[ ${devicename:5:6} = "mmcblk" ]]
   then
      devicename=$devicename"p"
   fi
   
   case $devicemodel in
      RPi4b | RPi400 | RPi2 | RPi3 | RPi3b) partname1=$devicename"1"
                                 mkfs.fat $partname1   2>> /root/rosARM.log
                                 partname2=$devicename"2"
                                 mkfs.ext4 $partname2   2>> /root/rosARM.log ;;
      OdroidXU4)                 partname1=$devicename"1"
                                 mkfs.ext4 $partname1  2>> /root/rosARM.log ;;
   esac
} # end of function partition_format

#################################################
# beginning of script
#################################################

# set screen size
printf '\e[8;35;130t'
clear

# Declare color variables
GREEN='\033[0;32m'
RED='\033[0;31m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

##### check to see if script was run as root #####
if [ $(id -u) -ne 0 ]
then
   whiptail_installed=$(pacman -Qs libnewt)
   if [[ "$whiptail_installed" != "" ]]; then 
      whiptail --title "Error - Cannot Continue" --msgbox "Please run this script as root" 8 47
      exit
   else 
      printf "${RED}Error - Cannot Continue. Please run this script with as root.${NC}\n"
      exit
   fi
fi

whiptail --title "CAUTION" --msgbox "Ensure ALL apps are closed, especially any file manager such as Thunar or Dolphin" 8 74 3>&2 2>&1 1>&3

dmesg -n 1 # prevent low level kernel messages from appearing during the script
# create empty /root/rosARM.log
printf "    LOGFILE\n\n" > /root/rosARM.log


armarch="$(uname -m)"
case "$armarch" in
        armv7*) armarch=armv7h ;;
esac

#pkill thunar
pkill Thunar

#pkill Dolphin
pkill Dolphin

pacman -S --noconfirm --needed libnewt &>/dev/null # for whiplash dialog

devicemodel=$(whiptail --title " SBC Model Selection" --menu --notags "\n            Choose which SBC to install or Press right arrow twice to cancel" 17 100 4 \
         "0" "Raspberry Pi 2 only" \
         "1" "Raspberry Pi 3/3b only" \
         "2" "Raspberry Pi 64 bit Model 4b 4GB only" \
         "3" "Raspberry Pi 32 bit Model 4b or 400" \
         3>&2 2>&1 1>&3)

if [[ "$devicemodel" = "" ]]
  then
     printf "\n\nScript aborted by user..${NC}\n\n" && exit
  else
     case $devicemodel in
#         0) devicemodel="OdroidN2" ;;
         1) devicemodel="RPi3" ;;
		 0) devicemodel="RPi2" ;;
#		 6) devicemodel="OdroidXU4" ;;
         2) devicemodel="RPi4b" ;;
         3) devicemodel="RPi400" ;;
     esac
fi


partition_format  # function to partition and format a micro SD card or eMMC card


case $devicemodel in
   OdroidN2 | RPi4b | RPi400 | RPi3 | RPi3b | RPi2)  mkdir MP1
                               mkdir MP2 
                               mount $partname1 MP1
                               mount $partname2 MP2 ;;
   OdroidXU4)                  mkdir MP1
                               mount $partname1 MP1 ;;
esac

case $devicemodel in
   OdroidN2)       install_OdroidN2_image ;;
   OdroidXU4)      install_OdroidXU4_image ;;
   Rpi2 | Rpi2)    install_RPi2_image ;;
   RPi3 | RPi3b)   install_RPi3_image ;;
   RPi4b | RPi400) install_RPi4_image ;;
esac

rm MP2/etc/motd

printf "\n\n${CYAN}Almost done! Just a couple of minutes more for the last step.${NC}\n\n"
case $devicemodel in
   OdroidN2 | RPi4b | RPi400 | RPi3 | RPi3b | RPi2) umount MP1 MP2
                              rm -rf MP1 MP2 ;;
                              umount MP1
                              rm -rf MP1 ;;
esac

rm Reborn-ARM*

printf "\n\n${CYAN}End of script!${NC}\n"
printf "\n${CYAN}Be sure to use a file manager or the terminal to umount the device before removing your device!${NC}\n"

printf "\n${CYAN}The default user is ${NC}alarm${CYAN} with the password ${NC}alarm\n"
printf "${CYAN}The default root password is ${NC}root\n\n\n"

exit

