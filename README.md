# WakeVMonESX
Check if a specific VM on a ESX Host is powered of, and if yes, power it on

## Tutorial

1. Put the file to a persistent datastore on the ESX Server and make the script executable

2. Run it frequently with cronjob (located in /var/spool/cron)

3. Start the script with the name of the VM as the first parameter 

Example cron:

*/5  *    *   *   *   /bin/sh /vmfs/volumes/52770442-fb3e8d44-ce51-288013b479c8/cronjobs/poweron_vm.sh 'VM-NAME'

This will run the script every 5 minutes.

Maybe you can't edit the /var/spool/cron/crontabs/root file directly. Just make a copy, edit this one and overwrite the original file.
