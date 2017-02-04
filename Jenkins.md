# Jenkins server

1. Create droplet (Ubuntu 16.04.1) in DigitalOcean for Jenkins server
2. Install python to jenkins server
   ```bash
   sudo apt-get install python
   ```
2. Copy droplet ip to /opt/ubuntuBase/ansible/hosts file
3. Add ansible user with sudo privileges to jenkins server
   ```bash
   ansible-playbook -i hosts -u root ansible_user.yml --limit jenkins
   ```
4. Install sshd, ufw, openjdk, jenkins   
   ```bash
   ansible-playbook -i hosts common.yml --limit jenkins
   ```
5. Login to Jenkins server http://<your-server>/securityRealm/addUser
6. Change admin user password
