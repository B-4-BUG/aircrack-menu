clear
echo "Performing initial task..."
sleep 1s
clear
echo "Performing initial task......"
sleep 1s
clear
echo "Performing initial task.........."
sleep 1s
clear
echo "Performing initial task.............."
sleep 1s
echo " "
echo " "
sudo apt update && sudo apt upgrade && sudo apt autoremove && clear && echo "Initial task done successfully."
mkdir -p wordlist/
sudo chmod 777 wordlist
echo " "
echo " "
echo "SELECT a Package to install";
echo "1. AIRCRACK-NG"
echo "2. CRUNCH"
echo "3. FINALIZE INSTALLATION"
echo -n "Enter your menu choice [1-3]: "

while :
do

# reading choice
read choice

case $choice in
  # Pattern 1
  1)  clear && echo "          Installing Aircrack-ng" && echo "===============================================================" && sudo apt install aircrack-ng && clear && echo "        Aircrack-ng installed successfully in your system." && echo "===============================================================" && echo " " && echo "Number of CPUs & SIMD support on your system." && echo " " && sudo aircrack-ng -u && echo " " && echo " ";;

  # Pattern 2
  2)   clear && echo "          Installing Crunch" && echo "===============================================================" && sudo apt -y install crunch && clear && echo "        Crunch installed successfully in your system." && echo "===============================================================" && echo " " && echo " ";;
  # Pattern 3
  3)  clear
echo "Finalizing installation..."
sleep 1s
clear
echo "Finalizing installation......"
sleep 1s
clear
echo "Finalizing installation.........."
sleep 1s
clear
echo "Finalizing installation.............."
sleep 1s
echo " "
echo " "
sudo apt update && sudo apt upgrade && sudo apt autoremove && clear && echo "Initial task done successfully."
echo " "
echo " ";;
  # Default Pattern
  *) echo "invalid option";;
  
esac
echo "SELECT a Package to install";
echo "1. AIRCRACK-NG"
echo "2. CRUNCH"
echo "3. FINALIZE INSTALLATION"
echo -n "Enter your menu choice [1-3]: "
done
