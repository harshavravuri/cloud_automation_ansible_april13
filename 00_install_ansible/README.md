# How to install Ansible

## On Windowns

1. Install WSL 2 (Windows Subsystem for Linux)
	
	- Please follow the steps from here: https://docs.microsoft.com/en-us/windows/wsl/wsl2-install
	
2. We recommend to use Visual Studio Code with the Remote WSL Extension
	
	- Download Visual Studio Code: https://code.visualstudio.com/download
	- Remote WSL Extension: https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl
	
3. Open the WSL terminal and install ansible:

	```bash
	$ sudo apt update
	$ sudo apt install software-properties-common
	$ sudo apt-add-repository --yes --update ppa:ansible/ansible
	$ sudo apt install ansible	
	```
	
## On OS X

The preferred way to install Ansible on a Mac is with pip.

```bash
$ brew install python3
$ pip3 install ansible
```
