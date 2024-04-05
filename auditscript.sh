clear
echo "This program will now perform server audit. Do not Interrupt."
sleep 4
echo "Step 1. Gathering hardware information"
dmesg > ./h.info
sleep 3
echo "Step 2. Gathering storage information"
lsblk > ./s.info
sleep 3
echo "Step 3. Gathering network information"
ip a s > ./i.info
sleep 3
echo "Step 4. Creating Tar-ball.."
tar zcf ./`hostname`.tar.gz ./*.info &> /dev/null
sleep 5
echo "Step 5. Cleaning up extras.."
rm -f ./*.info
sleep 3 
echo "Audit Complete"


