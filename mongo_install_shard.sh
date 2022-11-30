#!/bin/bash
#parameters private ips of configsvr1,2,3 mongos, shard1,2,3

#config_server1= $1
#config_server2= $2
#config_server3= $3
#mongos=$4
#shard1=$5
#shard2=$6
#shard3=$7

wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list

sudo apt-get update

sudo apt-get install -y mongodb-org
sudo apt install net-tools

sudo mkdir -p /data/db
sudo chmod 777 /data/db

sudo mkdir -p /data/db1
sudo chmod 777 /data/db1

sudo mkdir -p /data/db2
sudo chmod 777 /data/db2
