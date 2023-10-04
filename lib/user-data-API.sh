#!/bin/bash
yum update -y
sudo su
yum install -y git
yum install -y ruby
touch ~/.bashrc # this ensure the bashrc file is created
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
source /.nvm/nvm.sh 
nvm install 16

git clone https://github.com/diarmuidoconnor/distributed-systems-express-moviesAPI
cd distributed-systems-express-moviesAPI
npm install
npm run build
 
export SEED_DB=true
export SECRET=ilikecake
export PORT=3000
export MONGO_DB='mongodb+srv://readwriteuser:q1w2e3r4@doconnor-atlas-cluster.vddmf.mongodb.net/test?retryWrites=true&w=majority'
npm run start:prod
