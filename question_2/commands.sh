
# 1. Project Workspace Setup
mkdir -p ~/documents
# -p flag let's one create a directory with absolute path details
# ~ (tilde) - shortcut for user home directory
#
# 2. File Creation
cd ~/documents
touch plan.txt
# navigatd to the directory using cd command 
# created a file using touch command and providing filename plan.txt
#
# 3. Content Addition
echo "project note for solving staff graded assignmewnt on cli" > plan.txt 
# added a text using echo command
# this overrides the context (if any) in the file path (plan.txt)
#
# 4. File Metadata Verification
ls -l plan.txt
# used ls -l to view permissions
# username "ubuntu" checks out
#
# 5. File Duplication
cp plan.txt plan_copy.txt
# made a copy using cp command
# verified using ls -l command
#
# 6. Directory Renaming
cd ~
mv documents project_documents
# for renaming moved back the home directory
# used mv command to rename (move)
# 
# 7. Archival Structure
mkdir -p ~/project_documents/archive
# used mkdir command with -p flag for creating archive folder inside project_documents
#
# 8. File Organization
cd ~/project_documents
mv plan_copy.txt archive/
# first used cd command to go the folder where plan_copy.txt is
# used mv command to move the file to archive directory
#
# 9. Recursive Listing
cd ~
ls -lR project_documents
# used ls command with -R flag to recursively show all files in the folder as well as its subdirectories
#
# 10. Path Verification
cd project_documents/archive/
pwd
# navigate to folder where plan_copy.txt
# to verify use ls command
# pwd command shows the absolute path
#
# NOTE: the final project_documents folder has been copied to the git directory for evaluation purpose
