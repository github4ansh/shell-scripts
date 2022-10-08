# check if script executed with root privileges
if [[ $UID -ne 0 ]]
then 
 echo "User Creation failed! Execute the script with root privileges"
 exit 1
fi
# ask for username to be created
read -p "Enter username to create: " USER_NAME

# ask name of person for whom account is being created
read -p "Enter name of person who this account is for: " PERSON_NAME

# ask for password
read -p "Enter password for user account: " PASS_WORD

# create new user on the local system
useradd -c "${PERSON_NAME}" -m $USER_NAME 

# check if creation succeeded
if [[ ${?} -eq 0 ]]
then 
 echo "user $USER_NAME has been created successfully"
else
 echo "user creation failed"
 exit 1
fi

# set initial password for user account
echo "$PASS_WORD" | passwd --stdin ${USER_NAME}

# check if password command succeeded
if [[ ${?} -eq 0 ]]
then 
 echo "user's password has been set successfully"
else
 echo "unable to set password!user creation failed"
 exit 1
fi

# force password change on first login
passwd -e ${USER_NAME}

# displaying username, password and host where account was created
echo "script execution status:: created username: $USER_NAME, having password: ${PASS_WORD} on hostnae: $(hostname)"
