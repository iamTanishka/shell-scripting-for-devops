#!/bin/bash
read -p "Enter Username:" username
echo "Name: $username"

sudo useradd -m $username
echo "new user added"

echo "$1"
echo "$2"
echo "$3"
echo "$4"
echo "$5"
