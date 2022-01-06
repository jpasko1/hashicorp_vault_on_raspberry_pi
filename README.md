# Install Hashicorp vault on a raspberry pi

Home experiment to get vault working on a raspberry pi using a self-signed cert


## Generate self signed cert

```
cd config
./gen_self_signed_cert.sh
```

## Configure Ansible inventory file

Edit/modify **inventory** as necessary, assumes ssh key has been configured on the pi to allow ansible to ssh as the specified ansible_ssh_user



## Run Ansible

```
ansible-playbook -i inventory install_vault_192_on_pi.yaml  -v
