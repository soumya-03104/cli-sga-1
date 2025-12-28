# 1. User Identity Verification
whoami
# displays my mogged in username
# I am logged in as "ubuntu" user
id ubuntu
# displays groups I am a part of under groups= (comma separated list)
# I am joined to only one group "ubuntu" (same group name as the user name)
#
#2. Workspace Validation
pwd
# shows the absolute path of my current working directory
ls -al
# -l -> long format, showing permissions, ownership, size, date, and filename for each entry
# -a -> to show all files
#
# 3. Environment Confirmation File
touch ./question_1/user_info.txt
# creates a file name user_info.txt in question 1 folder
echo "Linux user environment verified" > ./question_1/user_info.txt
# wrote the line to user_info.txt
# Overrides whatever was written in this file before
# we could also perform the same action using an editor like vi
#
# 4. File Integrity Check
wc -c ./question_1/user_info.txt
# wc command gives us the no of line, words and characters
# -c flag gives us only the character count
#
# 5. Learning the Tools
man mkdir
# opens the manual page of mkdir command
#
# 6. Home Directory Inspection
ls -l ~
# long format list of ~ (shortcut for user home directory)
# ls command is already lexicographically (alphabetically) sorted
ls -lr ~
# -r -> additional flag for reverse sorting
#
# 7. Log Investigation
grep "admin" log.txt
# displays all lines containing the word "admin"
# highlights the searched word
#
# 8. System Information Check
uname -r
# displays version 6.5.0-15-generic which is the kernet version
#
# 9. Network Connectivity Test
ping www.google.com
# sends packets of 64bytes to test connectivity to www.google.com
# runs untill killed using Ctrl+C
#
# 10. System Health Awareness
uptime
# tells us how long (and since when) the system is on
# tells us how many users are logged in
# tells us load average (1min, 5 min, 15 min)
# load average 0 indicates CPU is idle