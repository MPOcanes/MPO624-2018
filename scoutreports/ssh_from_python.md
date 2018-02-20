# Need data from a remote server? Python has a module for that!
[Paramiko](https://github.com/paramiko/paramiko) is a module "that implements the SSH2 protocol for secure (encrypted and authenticated) connections to remote machines."
In other words, you can access and download files on a remote server without ever leaving the Python space.

## How to install Paramiko
You can add this to your MPO624 environment by editing MPO624_conda_environment.yml
* under `-pip:` add `-paramiko`
* then update your environment `conda env update -f=MPO624_conda_environment.yml` 

Now you can import paramiko in python

## A skeleton for downloading data
```
# Get data from a remote machine.
import os
import paramiko 

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect('ssh.example.com', username="your_name", password="your_password")
sftp = ssh.open_sftp()
local_dir = '/your_local_path/'
remote_dir = '/your_remote_path/'
dir_items = sftp.listdir_attr(remote_dir)
for item in dir_items:
    remote_path = remote_dir + '/' + item.filename         
    local_path = os.path.join(local_dir, item.filename)
    sftp.get(remote_path, local_path)
    print(item.filename)
sftp.close()
ssh.close()
```    

