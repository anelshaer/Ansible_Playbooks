#This Playbook is designed to run in two waves
#First run is to create Nessus Local Account
#Then it Configure everything else using the account created

#ansible-playbook -i <Inventory> <Playbook> --ask-vault-pass --extra-vars <Vault-File/Variables> --tags admin-accounts

ansible-playbook -i Inventory/Inventory-Nessus-Scanners Playbook/Playbook-Configure-Nessus.yml --ask-vault-pass --extra-vars '@group_vars/scanners' --tags admin-accounts

#ansible-playbook -i <Inventory> <Playbook> --ask-vault-pass --extra-vars <Vault-File/Variables> --skip-tags admin-accounts

ansible-playbook -i Inventory/Inventory-Nessus-Scanners Playbook/Playbook-Configure-Nessus.yml --ask-vault-pass --extra-vars '@group_vars/scanners' --skip-tags admin-accounts
