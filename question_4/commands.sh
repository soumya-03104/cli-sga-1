# 1: System Uptime Verification
uptime
# show the uptime as 2 hours 10 minutes
#
# 2: User Process Listing
whoami
ps -u ubuntu
# whoami to confirm the logged in user name
# ps command with -u flag and username to view the processes
# 
# 3: CPU Usage Analysis
ps -u ubuntu --sort=-%cpu
# now with addition --sort flag
# - -> sort direction reverse - highest first
# %cpu -> sort based on
#
# 4: Background Process Execution
sleep 300 &
ps -u ubuntu | grep sleep
# sleep command started 
# & -> runs the command in the background
# ps along with pipe (|) and grep "sleep" to find any matching process with the name sleep
#
# 5: Process Priority Management
ps -u ubuntu -o pid,comm,nice
# First, get a process ID (PID) from your running processes
# check the niceness first with the -o flag
# pick pid 8994 (sleep command)
renice -n 10 -p 8994
# updated the niceness
ps -u ubuntu -o pid,comm,nice
# observe niceness of 8994
# not showing 10
#
# 6: Memory Usage Monitoring
free -h
# showing total memory 15GB
# showing free memory as 3.9GB
# -h flag shows human readable format
#
# 7: Disk Space Inspection
df -h ~
# adding the ~ (tilde) shows the volume where my home directory resides
#
# 8: Shell Identification
echo $SHELL
# the active shell is /bin/bash
#
# 9: Output Redirection
uname -a > system_report.txt
cat system_report.txt
# the output was redirected to system_report.txt
# verify it was created using cat command
#
# 10: Disk Usage Visualization with ncdu
ncdu .
# ncdu is an easy interactive way of using du
# . -> here points to the current directory
# we are running du on the current directory
# we enter a interative mode where we can select subdirectories using arrow keys and enter
# to get out of the mode - we use 'q' key
