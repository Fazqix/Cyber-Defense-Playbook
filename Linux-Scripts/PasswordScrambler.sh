: '
Creation Date : 12/10/2022
Last Updated : N/A
Last Tested : N/A
Author : Ezra Woods
Purpose : Simply finds all users on the system, changes each user's password, and reports whether each user's password change was successful or not.
'

#!/bin/bash

# Find all users on the system
users=$(cut -d: -f1 /etc/passwd)

# Loop through each user
for user in $users; do
  # Skip the "admin" user (you may want to customize this)
  if [ "$user" == "admin" ]; then
    continue
  fi

  # Change the user's password
  echo "Changing password for user $user"
  passwd $user

  # Check if the password was successfully changed
  if [ $? -eq 0 ]; then
    echo "Password successfully changed for user $user"
  else
    echo "Failed to change password for user $user"
  fi
done
