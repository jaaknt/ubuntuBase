== Add your keys in this directory ==
ansible.priv - ansible user private key
ansible.pub  - ansible user public key
jenkins.priv - jenkins user private key
jenkins.pub  - jenkins user public key
my.pub       - your own public key

For example:
cat ~/.ssh/ansible/id_rsa     | ssh ansible@<your-server> 'cat - > /opt/ubuntuBase/ansible/files/keys/ansible.priv'
cat ~/.ssh/ansible/id_rsa.pub | ssh ansible@<your-server> 'cat - > /opt/ubuntuBase/ansible/files/keys/ansible.pub'
