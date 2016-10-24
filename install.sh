#!/bin/bash

echo "deb http://repo.mongodb.org/apt/debian/dists/"$(lsb_release -sc)"/mongodb-org/3.3/multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.3.list

sudo apt-get update

sudo apt-get install -y mongodb-org

systemctl start mongod

systemctl enable mongod
