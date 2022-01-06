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
ansible-playbook -i inventory install_vault_192_on_pi.yaml 

# Sample output  
PLAY [vaults] **********************************************************************************************************

TASK [Add vault group] *************************************************************************************************
[WARNING]: Platform linux on host 192.168.0.17 is using the discovered Python interpreter at /usr/bin/python, but
future installation of another Python interpreter could change this. See
https://docs.ansible.com/ansible/2.9/reference_appendices/interpreter_discovery.html for more information.
ok: [192.168.0.17]

TASK [Add vault user] **************************************************************************************************
ok: [192.168.0.17]

TASK [Create vault directory] ******************************************************************************************
ok: [192.168.0.17]

TASK [Create vault data directory] *************************************************************************************
ok: [192.168.0.17]

TASK [Create vault config directory] ***********************************************************************************
ok: [192.168.0.17]

TASK [See if we already downloaded vault] ******************************************************************************
ok: [192.168.0.17]

TASK [Download vault] **************************************************************************************************
skipping: [192.168.0.17]

TASK [Unpack Vault zip file] *******************************************************************************************
skipping: [192.168.0.17]

TASK [Chown vault binary to vault] *************************************************************************************
ok: [192.168.0.17]

TASK [symlink vault] ***************************************************************************************************
ok: [192.168.0.17]

TASK [Copy vault config to host] ***************************************************************************************
changed: [192.168.0.17]

TASK [Copy ssl keyto host] *********************************************************************************************
ok: [192.168.0.17]

TASK [Copy ssl crt to host] ********************************************************************************************
ok: [192.168.0.17]

TASK [Copy vault systemd config to host] *******************************************************************************
ok: [192.168.0.17]

TASK [Symlink systemd vault config] ************************************************************************************
ok: [192.168.0.17]

TASK [Reload systemd] **************************************************************************************************
changed: [192.168.0.17]

TASK [Enable systemd] **************************************************************************************************
changed: [192.168.0.17]

TASK [Start systemd] ***************************************************************************************************
changed: [192.168.0.17]

PLAY RECAP *************************************************************************************************************
192.168.0.17               : ok=16   changed=4    unreachable=0    failed=0    skipped=2    rescued=0    ignored=0   

