#!/bin/bash
echo "running"
echo "deb http://repo.mongodb.org/apt/debian "$(lsb_release -sc)"/mongodb-org/3.2 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list


sudo apt-get update

sudo apt-get install -y mongodb-org

systemctl start mongod

systemctl enable mongod

