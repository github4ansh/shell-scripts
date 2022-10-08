#/bin/bash

# ask for the user name
read -p "what username to create: " user_name

# ask for name of the person
read -p "Enter name of the person who this account is for: " person_name

# ask for password
read -p "Enter the password to use for the account: " password

# create the user
useradd -c "${person_name}" -m ${user_name}

# set user password
echo "${password}" | passwd --stdin $user_name

# expire the system defined password to ask user to reset in again for his/her account
passwd -e $user_name
