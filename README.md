# Add mulitple users to a Linux server.
[Shell Script](https://github.com/IbeChuksVictor/shell/blob/main/delusers.sh) to create multiple users from a list of names in a file.
<br>
The script;
- Checks for user's permission to run script.
- Searches for a file named [users.csv](https://github.com/IbeChuksVictor/shell/blob/main/users.csv), where names for users are listed in the current working directory.
- Checks if user group `developers` exists. If not create user group.
- Checks if user to be created with name from file already exists. If it does, add user to supplementary group `developers`.
- Create new users.
- Creates `.ssh` directory in the home directory of users and assign appropriate user permissions to the directory.
- Generates `SSH` connection authorisation keys for each user in the `.ssh` directory.

## Usage:
Run script with user that have root privileges like thus:
<br>
```bash
   $ sudo ./adduser.sh
```
<br>

# Delete mulitple users from a Linux server.
[Shell Script](https://github.com/IbeChuksVictor/shell/blob/main/delusers.sh) to delete multiple users from a list of names in a file. 
<br>
The script;
- Checks for user's permission to run script.
- Searches for a file named [users.csv](https://github.com/IbeChuksVictor/shell/blob/main/users.csv), where names for users are listed in the current working directory.
- Checks if user to be deleted with name from file already exists. Skip if it doesn't.
- Delete existing users and their home diectories.
## Usage:
Run script with users that have root privileges like thus:
<br>
```bash
   $ sudo ./deluser.sh
```
