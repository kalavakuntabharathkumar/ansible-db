# Idempotency Verification

Run the same provisioning playbook twice:

```bash
ansible-playbook -i inventory.ini playbooks/01_provision.yml
ansible-playbook -i inventory.ini playbooks/01_provision.yml
```

On the second run, resources already matching the declared state should report `ok` rather than being changed. Configuration files are managed through templates, and services are restarted only when a template change notifies the handler.
