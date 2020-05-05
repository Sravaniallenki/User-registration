#! /bin/bash -x
echo "firstname"
read firstname
if [[ $firstname =~ ^[A-Z]/([a-z]{2})$ ]]
then
 echo "valid name"
else 
 echo "invalid name"
fi


