# Jenkins server

1. Create droplet (Ubuntu 16.04.3) in DigitalOcean for Jenkins server (terraform script recommended)
2. Install python to jenkins server
   ```bash
   sudo apt-get install python python-pip
   ```
2. Copy droplet ip to /opt/ubuntuBase/ansible/hosts file
3. Add ansible user with sudo privileges to jenkins server
   ```bash
   ansible-playbook -i hosts -u root ansible_user.yml --limit jenkins
   ```
4. Install sshd, ufw, openjdk, jenkins, swapfile, nodejs, ansible, gradle, zip, unzip, jq, ...   
   ```bash
   ansible-playbook -i hosts common.yml --limit jenkins
   ```
5. Install docker, docker-compose   
   ```bash
   ansible-playbook -i hosts docker.yml --limit jenkins
   ```   
6. Login to Jenkins server http://jenkins.server.your:8080/securityRealm/user/admin/configure (or http://jenkins.server.your:8080/securityRealm/addUser)
7. Change admin user password
8. Configure security http://jenkins.server.your:8080/configureSecurity/
   - Enable security
   - Jenkins’ own user database
   - Logged-in users can do anything
   - Uncheck Allow users to sign up
