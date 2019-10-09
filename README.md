# WakeVMonESX
Check if a specific VM on a ESX Host is powered of, and if yes, power it on

## Tutorial

1. Put the file to a persistent datastore on the ESX Server and make the script executable

2. Run it frequently with cronjob (located in /var/spool/cron)

3. Start the script with the name of the VM as the first parameter 

For example

sh /opt/WOLVM.sh vm-name
