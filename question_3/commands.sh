# 1. File Creation
echo "some sample data for sga (cli)" > sample_data.txt
# using commands from question 1 and 2 to create and add text in a file
#
# 2. Hard Link Creation
ln sample_data.txt sample_hard.txt
# use ln command to create the hard link
#
# 3. Symbolic Link Creation
ln -s sample_data.txt sample_soft.txt
# use the ln command again but with the (-s) flag to create the symlink or soft link of the file
#
# 4. Inode Verification
ls -i sample_*
# use the ls command with the -i flag for inode display
#
# 5. Inode Analysis
ls -i sample_*
# we notice that the hard link has same inode (388922)
# we notice that the soft link has different inode (388963)
#
# 6. File Metadata Inspection
stat sample_data.txt
# we use stat command to view timestamps, permissions ownership and size of the file
# using this command we can see detailed ownership, file type / size
# using this command we can see the different timestamps also
#
# 7. Disk Usage Check
du -sh
# -s flag shows the size
# -h flag shows the size in a human readable format
#
# 8. File Size Overview
ls -lh
# the -h flag gives us the file size in a human readable format
#
# 9. Link Deletion Test
rm sample_soft.txt
# rm command removes the soft link file
# veified other files using ls command
# verified content of the original file using cat command
#
# 10. Disk Utility Demonstration
du -sh
# shows the size of the directory including all its content
du -h
# iteratively shows all files and folder | -h flag show size in human readable format
# helps idenify individual file taking space
du -h --max-depth=1
# --max-depth flag enables us to get a birds eye view 
# helps point out the folders which needs to be iteratively visited
# helps if the folder has too much content
df -h
# show total filesystem capacity
# shows mount point of individual disks
# show which disk has how much space left (along with used %)
df -i
# show total no of inodes available in the filesystem
# show no of inodes in use
# show available (free) inodes (along with % consumed)
