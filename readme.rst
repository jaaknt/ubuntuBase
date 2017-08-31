ubuntuBase
==========

Ubuntu 16.04 server to provision new servers with Ansible. Target is to have secure Ubuntu 16.04 linux box in public Internet.
The server main responsibility is to configure other linux boxes using Ansible scripts.

* Download ubuntuBase from GitHub ::

     mkdir -p /opt && cd /opt && git clone https://github.com/jaaknt/ubuntuBase.git

* Install ansible ::

     cd /opt/ubuntuBase/scripts && ./install_ansible.sh

3. Install dependencies with ansible-galaxy ::

   cd /opt/ubuntuBase/ansible && sudo ansible-galaxy install --force --role-file requirements.yml

4. Add manually your own/ansible/jenkins public key and add ansible user with sudo privilege without password, copy hosts.example -> hosts file and make changes if necessary. ::

   cat ~/.ssh/id_rsa.pub         | ssh root@yourserver 'cat - > /opt/ubuntuBase/ansible/files/keys/my.pub'
   cat ~/.ssh/ansible/id_rsa     | ssh root@yourserver 'cat - > /opt/ubuntuBase/ansible/files/keys/ansible.priv'
   cat ~/.ssh/ansible/id_rsa.pub | ssh root@yourserver 'cat - > /opt/ubuntuBase/ansible/files/keys/ansible.pub'
   cat ~/.ssh/jenkins/id_rsa     | ssh root@yourserver 'cat - > /opt/ubuntuBase/ansible/files/keys/jenkins.priv'
   cat ~/.ssh/jenkins/id_rsa.pub | ssh root@yourserver 'cat - > /opt/ubuntuBase/ansible/files/keys/jenkins.pub'
   cp hosts.example hosts
   ansible-playbook -i hosts ansible_user.yml --limit local

5. Install ufw (only ssh allowed), sshd (no username/password login) ::

   su - ansible && cd /opt/ubuntuBase/ansible && ansible-playbook -i hosts common.yml --limit local

6. Logout from linux server and try ::

   ssh ansible@your.server

Next: [Add Jenkins server](./jenkins.rst)
