## Working with SSH keys

SSH key configuration:

```bash
chmod 600 keyfile.pem
```

Log in to the machine with SSH:
```bash
ssh -i keyfile.pem ubuntu@public-ip
```

## Ping module

Tests ansible connectivity. More information on ping module:

https://docs.ansible.com/ansible/latest/modules/ping_module.html

```bash
ansible -m ping all
```

## Executing shell commands on the remote machine

Execute command remotely:

```bash
ansible -m command -a 'cat /etc/hosts' all
```

Other modules which are "similar" to command:

Shell: https://docs.ansible.com/ansible/latest/modules/shell_module.html

Raw: https://docs.ansible.com/ansible/latest/modules/raw_module.html (does not require python to be installed on target)

Command: https://docs.ansible.com/ansible/latest/modules/command_module.html

These actions are not idempotent as Ansible could not tell if a command changes anything on the server!

## Copy module: copying files from the control to target

```bash
ansible -m copy -a "src=./my-motd dest=/etc/motd" all
```
