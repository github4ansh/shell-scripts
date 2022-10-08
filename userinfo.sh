echo "your UID is ${UID}" # UID is linux command not shell build-in
echo "your username correspond to UID is (command exec using back ticks): `id -nu`" # Username

# checks if user executing script is root or not
if [[ "${UID}" -eq 0 ]]
then 
  echo "user is root"
else
  echo "user is not root"
fi
