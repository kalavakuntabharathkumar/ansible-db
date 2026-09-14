# Rollback Procedure

1. Confirm the latest database dump exists.
2. Intentionally alter or corrupt the managed configuration in a test VM.
3. Restore the database using `scripts/rollback.sh`.
4. Re-run the configuration playbook to restore declared configuration.
5. Validate PostgreSQL service status and application connectivity.

The repository provides the automation; the claimed sub-five-minute restoration should be measured on the target VM environment rather than assumed.
