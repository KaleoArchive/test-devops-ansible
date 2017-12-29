#!/bin/bash
set -eu -o pipefail

user_path="/home/ubuntu/workspace/src/github.com/kaleocheng"
cli_repo="https://github.com/kaleocheng/test-devops-cli.git"
cli_path=$user_path/test-devops-cli
mkdir -p $user_path
git_username="Kaleo Cheng"
git_email="kaleocheng@gmail.com"

# Clone cli repo
if [ ! -d "$cli_path" ] ; then
    git clone $cli_repo $cli_path
fi

git config --global user.name $git_username
git config --global user.email $git_email
