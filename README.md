

# test-devops-ansible
Ansible scritps for test-devops

## Requirements

- [**Ansible**](https://www.ansible.com/)

Change your host and the default.yml  in `ansible`, and then just play.

```shell
# Install requiestments
$ ansible-galaxy install -r requirements.yml

$ ansible-playbook -i hosts site.yml
```
This book updates the dev for every new commit and updates the staging for every new tag.

you could access this site by you url for now, The defaults:

- dev: [http://dev.kaleo.run](http://dev.kaleo.run)
- staging: [http://staging.kaleo.run](http://staging.kaleo.run)
