Node servers
============

1. Create droplet (Ubuntu 16.04.3) in DigitalOcean for CI server
   (terraform script recommended)
2. Install python to jenkins server ::
     bash    sudo apt-get install python python-pip
3. Copy droplet ip to /opt/ubuntuBase/ansible/hosts file
4. Add ansible user with sudo privileges to jenkins server ::
     bash    ansible-playbook -i hosts -u root ansible_user.yml --limit ci
5. Install sshd, openjdk, jenkins, swapfile, nodejs, ansible,
   gradle, zip, unzip, jq, … ::
     bash    ansible-playbook -i hosts common.yml --limit ci
6. Login to Jenkins server
   http://jenkins.server.your:8080/securityRealm/user/admin/configure
   (or http://jenkins.server.your:8080/securityRealm/addUser)
7. Change admin user password
8. Configure security http://jenkins.server.your:8080/configureSecurity/

-  Enable security
-  Jenkins’ own user database
-  Logged-in users can do anything
-  Uncheck Allow users to sign up
