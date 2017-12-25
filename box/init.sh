#!/bin/bash
set -eu -o pipefail

user_path="/home/ubuntu/workspace/src/github.com/kaleocheng"
cli_path=$user_path/test-devops-cli
mkdir -p $user_path

# Clone cli repo
git clone git@github.com:kaleocheng/test-devops-cli.git $cli_path

# Build 'test-devops-cli'
cd $cli_path
go build

# Init, get the 'test-devops-site' and 'test-devops-neo' 
./cli.sh init

# Crontab
# run 'dev' every 10 minutes
(sudo crontab -l ; echo "*/10 * * * * cd $cli_path && ./cli.sh dev") | sort - | uniq - | sudo crontab -
# run 'staging' every 1 hour
(sudo crontab -l ; echo "0 * * * * cd $cli_path && ./cli.sh staging") | sort - | uniq - | sudo crontab -
