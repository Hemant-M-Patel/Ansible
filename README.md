# Ansible-Examples
Various scenarios.


Cheat-Sheet:

1. --check : For Dry Run
2. - v : For verbose output, may pass like -vv or -vvv to have more verbose output
3. - b : To run command with sudo priviledges or use --become option
4. - a : To give commnand
5. "ansible-galaxy install role_name" (Installs roles from Ansible Galaxy's community pre-defined roles into /etc/ansible/roles/  directory)
   Thus ansible playbooks will look for roles in this directory.
   
   "ansible-galaxy install role_name -p ./roles" (To install roles under current directory roles)
6. "ansible-galaxy list" (To see the available roles)
7. "ansible-config dump | grep ROLE" (To view the location where the roles would be intalled)
8. Ansible Vault:
   To encrypt inventory file use, "ansible-vault encrypt filename"
   To ask for password for Ansible vault use, "ansible-playbook playbook_file -i inventory_file --ask-vault-pass"
   To ask for password by running a scipt in any language use, "ansible-playbook playbook_file -i inventory_file path-to-file" (File example vault_pass.py, this file will extract password from the safe location)
   To view the contents of the encrypted file use, "ansible-vault view inventory_file"
   To create an encrypted file use, "ansible-vault crete inventory_file"
9. 
