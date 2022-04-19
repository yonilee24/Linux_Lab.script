#!bin/bash

# 1. Show where we are now

pwd
echo ""

# 2. Take 4 Resources of my machine and put the output in Resurces.txt file

echo "Karnel Version: `uname -v | awk 'NR=2 {print $1}' | awk -F \"~\" '{print $2}'`" > Resources.txt
echo "----------------------------------------------------------------" >> Resources.txt
echo "" >> Resources.txt
echo "Storage: `df -h | grep /$ | awk '{print $2}'`" >> Resources.txt
echo "Storage Free: `df -h | grep /$ | awk '{print $4}'`" >> Resources.txt
echo "----------------------------------------------------------------" >> Resources.txt
echo "" >> Resources.txt
echo "My IP: `ip add | grep enp0s3 | awk 'NR==2 {print $2}'`" >> Resources.txt
echo "----------------------------------------------------------------" >> Resources.txt
echo "" >> Resources.txt
echo "Memory: `free -m | awk 'NR==2 {print $2}'`" >> Resources.txt
echo "Memory Free: `free -m | awk 'NR==2 {print $4}'`" >> Resources.txt
echo "----------------------------------------------------------------" >> Resources.txt
cat Resources.txt
echo ""

# 3. Create 4 file (1.txt...)

touch {1..4}.txt

# 4. Merge and compress all files into a file called yoni.tgz
# z = compress, c = merge, v = see the process
 
tar -zcvf yoni.tgz {1..4}.txt

# delete {1..4}.txt files (1.txt 2.txt 3.txt 4.txt)

rm {1..4}.txt

# 5. Move the yoni.tgz file to desktop

mv yoni.tgz /home/yoni/Desktop

# 6. Opening and deploying the file yoni.tgz in desktop
# x = deploying

echo ""
tar -xzvf /home/yoni/Desktop/yoni.tgz -C /home/yoni/Desktop
rm /home/yoni/Desktop/yoni.tgz

# 7. print after we done all the tasks "Im Done!"

echo ""
echo "-------------------------------"
echo "  IM DONE!!!!      "
echo "-------------------------------"
