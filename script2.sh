#!/bin/bash

ip=(10.15.9.17/32 10.17.16.12/32)
ip2=(sftp_1 sftp_2)

for ((i=0;i<${#ip[@]};i++));do

   `aws ec2 authorize-security-group-ingress --group-id sg-123 --ip-permissions IpProtocol=tcp,FromPort=22,ToPort=22,IpRanges="[{"CidrIp="${ip[$i]}"","Description="${ip2[$i]}""}]" --region eu-west-2` ;
   echo ${ip[$i]} ${ip2[$i]};
   
done
