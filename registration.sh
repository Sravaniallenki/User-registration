#! /bin/bash 
echo "firstname"
read firstname
echo "lastname"
read lastname
echo "email"
read email
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
if [[ $email =~ ^[a-zA-z0-9._+-]+@[a-zA-Z0-9.-]+\.[a-zA-z]{2,}$ ]]
then
 echo "valid name"
else
 echo "invalid name"
fi
read -p "Enter Mobile number" mob
mobpat="^[0-9]{2}[[:space:]][0-9]{10}$";
if [[ $mob =~ $mobpat   ]]
then
  echo "Valid mobile number";
else
  echo "Invalid mobile number";
fi
