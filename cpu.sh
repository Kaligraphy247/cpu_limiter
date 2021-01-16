# This scripts limits the number of cores your cpu uses 
# This may or may not help you save battery on Laptops

echo "This scripts limits the number of cores your cpu uses.
This may or may not help you save battery on Laptops.
Now if you have a desktop, why the hell would you want to do this?
"
sleep 8
echo "
Either way, let's get started.
 You need to be root to run this script.
 sudo doesn't work; so use 'su' 
 if you can't handle this part, you probably shouldn't be doing this."
sleep 6
echo " make executable with 'chmod 755 cpu.sh'"

sleep 3
echo "
Finding how many cpu cores you have:
"
sleep 1.5
echo .
sleep 1.5
echo ..
sleep 1.5
echo ...
sleep 1.5
#Enter 1 for inxi 2 for lscpu

# First find out how many core your cpu has
#inxi -C
#lscpu | grep -m 1 --color "CPU(s)"
echo "You have $(nproc --all) Threads/cores"
sleep 3

echo "
How many cpu cores can you see: "
read cores

sleep 2

echo "To confirm, you have $cores cores"
sleep 2
echo "
Please leave at least 1 - 2 cores available. (i.e. Don't be stupid)
Enter the no. of cpu cores you  want to use:
"

read core
sleep 1
echo You have chosen to use $core cores
echo 0 > /sys/devices/system/cpu/cpu$core/online
sleep 1.5
echo Success, Now using $core cores
sleep 2.5
echo "KEEP THIS TERMINAL OPEN !!!!
To turn off, type '1'
"

read varone
echo $varone > /sys/devices/system/cpu/cpu$core/online
sleep 1.5
echo All Done!!!

#inxi -mGC
#echo 0 > /sys/devices/system/cpu/cpu4/online
