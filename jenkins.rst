Jenkins server
==============

#. Create droplet (Ubuntu 16.04.3) in DigitalOcean for Jenkins server
   (terraform script recommended)
#. Install python to jenkins server
   ``bash    sudo apt-get install python python-pip``
#. Copy droplet ip to /opt/ubuntuBase/ansible/hosts file
#. Add ansible user with sudo privileges to jenkins server
   ``bash    ansible-playbook -i hosts -u root ansible_user.yml --limit jenkins``
#. Install sshd, ufw, openjdk, jenkins, swapfile, nodejs, ansible,
   gradle, zip, unzip, jq, …
   ``bash    ansible-playbook -i hosts common.yml --limit jenkins``
#. Install docker, docker-compose
   ``bash    ansible-playbook -i hosts docker.yml --limit jenkins``
#. Login to Jenkins server
   http://jenkins.server.your:8080/securityRealm/user/admin/configure
   (or http://jenkins.server.your:8080/securityRealm/addUser)
#. Change admin user password
#. Configure security http://jenkins.server.your:8080/configureSecurity/

-  Enable security
-  Jenkins’ own user database
-  Logged-in users can do anything
-  Uncheck Allow users to sign up
