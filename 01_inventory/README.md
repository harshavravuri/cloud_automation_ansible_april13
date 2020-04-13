## Ansible inventory and target host/group selection

More examples:
https://docs.ansible.com/ansible/latest/user_guide/intro_patterns.html

Use ansible.cfg to configure your inventory file

Example for host selection patterns:

1. Select all hosts from a certain group:
```bash
ansible --list-hosts loadbalancers
```

2. Selecting multiple groups:
```bash
ansible --list-hosts loadbalancers:webservers
```

3. Select all hosts with wildcard:
```bash
ansible --list-hosts "app*"
```

4. Selecting specific hosts from a group
```bash
# select the first one
ubuntu@ip-10-0-1-96:~/ansible$ ansible --list-hosts appservers[0]
  hosts (1):
    app01
# select the second
ubuntu@ip-10-0-1-96:~/ansible$ ansible --list-hosts appservers[1]
  hosts (1):
    app02
# select the last
ubuntu@ip-10-0-1-96:~/ansible$ ansible --list-hosts appservers[-1]
  hosts (1):
    app10
# select the second from the end
ubuntu@ip-10-0-1-96:~/ansible$ ansible --list-hosts appservers[-2]
  hosts (1):
    app09
@ select first 3
ubuntu@ip-10-0-1-96:~/ansible$ ansible --list-hosts appservers[0:3]
  hosts (4):
    app01
    app02
    app03
    app04
```

