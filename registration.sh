#! /bin/bash -x
echo "firstname"
read firstname
echo "lastname"
read lastname
if [[ $firstname =~ ^[A-Z]/([a-z]{2})$ ]]
then
 echo "valid name"
else 
 echo "invalid name"
fi
if [[ $lastname =~ ^[A-Z]/[a-z]{2}$ ]]
then
 echo "valid name"
else
 echo "invalid name"
fi

