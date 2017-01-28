# ubuntuBase
Ubuntu 16.04 server to provision new servers with Ansible

Target is to have secure Ubuntu 16.04 linux box in public Internet. The server main responsibility is to configure other linux boxes using Ansible scripts.

(1) Download ubuntuBase from GitHub
   ```bash
   mkdir -p /opt
   cd /opt
   git clone https://github.com/jaaknt/ubuntuBase.git
   ```
(2) Install ansible
   ```bash
   cd /opt/ubuntuBase/scripts
   ./install.sh
   ```
(3) Install dependencies with ansible-galaxy  
   ```bash
   cd /opt/ubuntuBase/ansible
   ansible-galaxy install -r requirements.yml
   ```
(4) Add manually your own/ansible public key and add ansible user with sudo privilege without password
   ```bash
   vi files/keys/id_rsa.pub
   vi files/keys/ansible.pub
   ansible-playbook -i hosts ansible_user.yml
   ```
(5) Install ufw (only ssh allowed), sshd (no username/password login)
   ```bash
   su - ansible
   cd /opt/ubuntuBase/ansible
   ansible-playbook -i hosts init.yml
   ```
(6) Logout from linux server and try ssh ansible@your.server
