#!/bin/bash


read -p 'username: ' username
read -sp 'password: ' password
echo username: $username password: $password
echo
echo enter three things:
read thing1 thing2 thing3
echo you entered:
echo $thing1
echo $thing2
echo $thing3

