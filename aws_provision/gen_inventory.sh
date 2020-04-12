#!/bin/bash
echo "[loadbalancers]" > aws-inventory
cat lb01.tmp >> aws-inventory
echo "[databases]" >> aws-inventory
cat db01.tmp >> aws-inventory
echo "[webservers]" >> aws-inventory
cat web01.tmp >> aws-inventory
cat web02.tmp >> aws-inventory

echo "[control]" >> aws-inventory
echo "localhost ansible_connection=local" >> aws-inventory
echo "[all:vars]" >> aws-inventory
echo "ansible_user=ubuntu" >> aws-inventory
echo "ansible_ssh_private_key_file=./course_aws_privatekey.pem" >> aws-inventory

