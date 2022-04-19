#!/bin/bash

# 1. make directory in Desktop named Net4U
mkdir /home/yoni/Desktop/Net4U

# 2. Make 10 files in Net4U directory
touch  /home/yoni/Desktop/Net4U/{1..10}.txt

#cd /home/yoni/Desktop/Net4U
#for i in {1..10}
#do
#    touch $i.txt
#done

# Delete the Net4U directory with all the files inside
# 3. rm -r /home/yoni/Desktop/Net4U

# 4. take the whatis ping command and put it in ping.txt file
whatis ping > /home/yoni/Desktop/Net4U/ping.txt
cat /home/yoni/Desktop/Net4U/ping.txt
echo ""
# 5. creating a file with personal details about me nicely
echo """Personal details about me:

First name: Yoni
Last name: Lichtenshtein
Date of birth: 11.07.1983
Phone number: 0547409069
Email: Yonilee24@gmail.com
""" > /home/yoni/Desktop/Net4U/personal_details.txt
cat /home/yoni/Desktop/Net4U/personal_details.txt

# 6. create a folder, entering to that folder, create 2 files: 1. family names. 2. friends names. and put the names in to these files nicely
mkdir /home/yoni/Desktop/Net4U/Family_and_friends_names
echo """Family names:

Father: Samuel
Mother: Ilana
Brother: Boaz
""" > /home/yoni/Desktop/Net4U/Family_and_friends_names/Family_names.txt
cat /home/yoni/Desktop/Net4U/Family_and_friends_names/Family_names.txt
echo """Friends names:

Tomer
Avi
Oded
Tom
""" > /home/yoni/Desktop/Net4U/Family_and_friends_names/Friends_names.txt
cat /home/yoni/Desktop/Net4U/Family_and_friends_names/Friends_names.txt
