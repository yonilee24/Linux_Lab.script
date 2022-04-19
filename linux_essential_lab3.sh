#!/bin/bash

echo -e "Menu:\n1. Print My ip\n2. Pick group name and user name and put them in sudo group\n3. Change Permission on a file from specific location and change the permission on this file\n4. Make 10 files and put them on tgz file and afterwords put the file on Desktop\n5. Kill all the proccess are running on background\n"
read Choice

if [ $Choice = "1" ]
then 
    # 1. Print your IP Adress to the screen
    echo "My IP: `ip add | grep enp0s3 | awk 'NR==2 {print $2}'`"
        
elif [ $Choice = "2" ]
then 

        
    # 2. Input group name and user name from customer and create them both and associate them to sudo group and to the group input of the customer

    echo "Please write the user you want to add to this machine: "
    read user
    echo "Please write the name of the group you want to add to this machine"
    read group

    # adding user
    sudo adduser $user
    echo "user $user added" 
    echo ""

    # adding group
    sudo groupadd $group
    echo "group $group is added"
    echo ""

    # adding the user to the group that customer cohice
    sudo usermod -a -G $group $user
    echo "user $user is added to $group group"
    echo ""

    # adding the user to sudo group
    sudo usermod -a -G sudo $user
    echo "user $user is added to sudo group"
    echo ""
elif [ $Choice = "3" ]
then 

    # 3. Change permission on a file in a specific location

    echo "Please enter the name of the file you want to add: "
    read file
    echo ""
    echo """
    Please enetr the specific location to add the file you just added:
    (example for full path: /home/yoni/Desktop)
    """
    read location
    echo ""
    touch $location/$file
    echo "Changing permission to the file $file you just added!!!"
    sudo chmod 777 $location/$file

    echo "permission to file $file is changed seccessfuly!!!"
    echo ""
        
elif [ $Choice = "4" ]
then 

    # 4. create 10 file and then archiving them and compress them to file 
    touch {1..10}.txt
    tar -zcvf boaz.tgz {1..10}.txt
    mv boaz.tgz /home/yoni/Desktop
        

elif [ $Choice = "5" ]
then 

    # 5. kill all the process running backstage automatic
    echo "you choose 5"
    sudo reboot
else
    echo "Wrong choice!"
        
fi




