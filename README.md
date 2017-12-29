

# test-devops-scripts
Some scripts (Ansible scritps and Vagrantfile) for test-devops

## Requirements
- [**Vagrant**](https://www.vagrantup.com/)
- [**Ansible**](https://www.ansible.com/)

## Usage

```shell
$ git clone https://github.com/kaleocheng/test-devops-scripts.git
```

###  Create post  in Vagrant box
Use `start-box.sh` to create a box and clone the `test-devops-cli`first:
```shell
$ cd test-devops-scripts/box
$ ./start-box.sh
```

Init with `cli.sh`:
> You need to have the permission (ssh key) to pull & push `test-devops-site` and `test-devops-neo`:

```shell
$ vagrant ssh
$ cd $GOPATH/src/github.com/kaleocheng/test-devops-cli
$ ./cli.sh init
```
So then, you could create a post or make a tag:
```shell
$ ./cli.sh dev
$ ./cli.sh staging
```
By default:
```shell
git.username="Kaleo Cheng"
git.email="kaleocheng@gmail.com"
```
you could set to yours:
```shell
$ git config --global user.name "Your name"
$ git config --global user.email "your@email"
```

### Publish Site using Ansible
Change your host and the default.yml  in `ansible`, and then just play.
```shell
$ cd ansible

# Install requiestments
$ ansible-galaxy install -r requirements.yml

$ ansible-playbook -i hosts site.yml
```
This book updates the dev for every new commit and updates the staging for every new tag.

you could access this site by you url for now, The defaults:

- dev: [http://dev.kaleo.run](http://dev.kaleo.run)
- staging: [http://staging.kaleo.run](http://staging.kaleo.run)
