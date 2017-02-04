# Jenkins server

1. Create droplet in DigitalOcean for Jenkins server
2. Copy droplet ip to /opt/ubuntuBase/ansible/hosts file
3. Add ansible user with sudo privileges to jenkins server
   ```bash
   ansible-playbook -i hosts ansible_user.yml --limit jenkins
   ```
4. Install sshd, ufw, openjdk, jenkins   
   ```bash
   ansible-playbook -i hosts common.yml --limit jenkins
   ```
