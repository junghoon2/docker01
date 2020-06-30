#!/bin/bash

function init_sshd()
{
        #set root passwd
        echo 'Diamanti1!' | passwd --stdin root

        #customize /etc/ssh/sshd.conf
        sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/g' /etc/ssh/sshd_config
        sed -i 's/#Port 22/Port 1022/g' /etc/ssh/sshd_config

        #Create ssh_key
        /usr/bin/ssh-keygen -A

        #exec sshd foreground
        /usr/sbin/sshd -D
}

init_sshd
