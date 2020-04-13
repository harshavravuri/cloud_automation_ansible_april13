## Ansible inventory and target host/group selection

More examples:
https://docs.ansible.com/ansible/latest/user_guide/intro_patterns.html

Use ansible.cfg to configure your inventory file

Example for host selection patterns:

1. Select all hosts from a certain group:
```code
ansible --list-hosts loadbalancers
```

2. Selecting multiple groups:
```code
ansible --list-hosts loadbalancers:webservers
```

3. Select all hosts with wildcard:
```code
ansible --list-hosts "app*"
```

4. Selecting specific hosts from a group
```code
ubuntu@ip-10-0-1-96:~/ansible$ ansible --list-hosts appservers[0]
  hosts (1):
    app01
ubuntu@ip-10-0-1-96:~/ansible$ ansible --list-hosts appservers[1]
  hosts (1):
    app02
ubuntu@ip-10-0-1-96:~/ansible$ ansible --list-hosts appservers[-1]
  hosts (1):
    app10
ubuntu@ip-10-0-1-96:~/ansible$ ansible --list-hosts appservers[-2]
  hosts (1):
    app09
ubuntu@ip-10-0-1-96:~/ansible$ ansible --list-hosts appservers[:3]
[WARNING]: Could not match supplied host pattern, ignoring: appservers[:3]
[WARNING]: No hosts matched, nothing to do
  hosts (0):
ubuntu@ip-10-0-1-96:~/ansible$ ansible --list-hosts appservers[0:3]
  hosts (4):
    app01
    app02
    app03
    app04
```

