# ubuntuBase
Ubuntu 16.04 server to provision new servers with Ansible

Target is to have secure Ubuntu 16.04 linux box in public Internet. The server main responsibility is to configure other linux boxes using Ansible scripts.

    ```
    mkdir -p /opt
    cd /opt
    git clone git@github.com:jaaknt/ubuntuBase.git

    cd /opt/ubuntuBase/scripts
    ./install.sh

    cd /opt/ubuntuBase/ansible
    ansible-playbook install -r requirements.yml
    ansible-playbook -i hosts ansible_user.yml

    su - ansible
    cd /opt/ubuntuBase/ansible
    ansible-playbook -i hosts init.yml

    ```
