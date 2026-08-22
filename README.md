# Ansible-Based Database Provisioning & Configuration Tool

A reproducible Ansible project for provisioning three simulated PostgreSQL database servers on Ubuntu VMs.

## What it demonstrates
- Six playbooks for provisioning, users, backups, configuration, validation, and rollback
- Idempotent package/configuration roles
- Jinja2 configuration templating
- Bash-assisted database dump and restoration
- Verification of repeated runs and configuration stability

## Run
Install Ansible and point `inventory.ini` at your Ubuntu test VMs.

```bash
ansible-playbook -i inventory.ini playbooks/01_provision.yml
ansible-playbook -i inventory.ini playbooks/02_users.yml
ansible-playbook -i inventory.ini playbooks/03_configure.yml
ansible-playbook -i inventory.ini playbooks/04_backup.yml
ansible-playbook -i inventory.ini playbooks/05_validate.yml
ansible-playbook -i inventory.ini playbooks/06_rollback.yml
```

The default inventory uses example private IPs; replace them with your VM addresses before connecting.
