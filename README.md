# 2510-003-FinalProject
SwollenHippo Enterprise: Ansible Management Server Documentation

**Server Configuration:**
To run the Ansible Management Server, you'll need a minimum of 3 servers and a maximum of 7. These include 1 Ansible Management Server, 1 Web Server, and 1 Hybrid Server acting as both a Web Server and Database Server. Environments available are Dev, Test, and Prod.

**Ansible Host File Configuration:**
When booting the Ansible Management Server, use the command:
```
sudo nano /etc/ansible/hosts
```
Adjust IP addresses in the host file to match different environments. For 3 servers, use the same IP addresses for each environment; for 7 servers, assign distinct IP addresses for each environment.

**Server Setup:**
For each server (excluding Ansible Management Server):

1. Set password:
   ```
   sudo passwd
   ```
2. Install required packages:
   ```
   sudo apt update
   sudo apt install ansible nano
   ```
3. Update SSH configuration:
   ```
   sudo nano /etc/ssh/sshd_config
   ```
   Change "PermitRootLogin" and "PasswordAuthentication" to yes.

**SSH Key Configuration with GitHub:**
On each server (excluding Ansible Management Server):

1. Generate SSH key using the provided script.
2. Add the SSH key to your GitHub account.

**Playbook Execution:**
Before running playbooks, replace "jlmcdavid42" with your username in specified files. Navigate to the `shellscript_files` directory and execute:
```
./run_playbook.sh
```
Choose the environment (dev, test, or prod) when prompted. Address permission issues with chmod if needed.

**Running a Cron Job:**
To run a playbook every minute, navigate to the `shellscript_files` directory and execute:
```
./cron_file.sh
```
Specify the environment (dev, test, or prod) when prompted. Address permission issues with chmod if needed.
