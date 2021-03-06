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
read -p "Enter password" pass
passpat1="^([a-zA-Z0-9@#!]){8}$";
passpat2="^([a-z0-9@#!]*)[A-Z]+([a-z0-9@#!]*)$";
passpat3="^[a-zA-Z@#!]*[0-9]+[a-zA-Z@#!]*$";
passpat4="^([a-zA-Z0-9]*)[^a-zA-Z_0-9\s]([a-zA-Z0-9]*)$";
if [[ $pass =~ $passpat1   ]]
then
  if [[ $pass =~ $passpat2  ]]
  then
     if [[ $pass =~ $passpat3  ]]
     then
       if [[ $pass =~ $passpat4  ]]
       then
        echo "Perfect password"
       else
         echo "Please enter at least one special char";
        fi

     else
       echo "Please enter at least one digit";
     fi

  else
    echo "Please enter at least one caps letter";
  fi
else
  echo "Your password should be of 8 length";
fi

