# Scripts
### Some small interesting scripts


You can use cron to run these scripts at specified interval.

To schedule the job you have to edit the crontab using crontab -e

This will open the crontab file.

If you are opening this file for first time, in Ubuntu, it will ask you to choose the editor.

After that, you add this line

*/10 * * * * /home/name/scripts/backup.sh

This will run the script backup.sh after every 10 min every day.
