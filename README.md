# Add mulitple users to a Linux server.
[Shell Script](https://github.com/IbeChuksVictor/shell/blob/main/delusers.sh) to create multiple users from a list of names in a file.
<br>
The script;
- Checks for user's permission to run script.
- Searches for a file named [users.csv](https://github.com/IbeChuksVictor/shell/blob/main/users.csv), where names for users are listed in the current working directory.
- Checks if user group `developers` exists. If not create user group.
- Check if users to be created with usernames listed in [file](https://github.com/IbeChuksVictor/shell/blob/main/users.csv) already exists. If it does, add user to supplementary group `developers`.
- Create new users with username listed in [file](https://github.com/IbeChuksVictor/shell/blob/main/users.csv).
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
- Check if users to be deleted with name listed in [file](https://github.com/IbeChuksVictor/shell/blob/main/users.csv) already exists. Skip if it doesn't.
- Delete existing users and their home diectories with usernames listed in [file](https://github.com/IbeChuksVictor/shell/blob/main/users.csv).
## Usage:
Run script with users that have root privileges like thus:
<br>
```bash
   $ sudo ./deluser.sh
```
