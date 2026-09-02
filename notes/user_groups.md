## general notes 


## user/group management 




### useful user-related commands 

`useradd -m [username]`  
- `-m` creates home dir for the new user 
    - copies contents of system's skeleton dir into new user's home dir
    - skeleton dir contains default config files needed for fresh user env 

`usermod -aG [group] [user]`
- add an existing user to a sexondary group 
- `-a` appends, `-G` specifies group 

`userdel` -r [username]
- remove a user & delete their home dir  

`passwd [username]`
- set/update password for a user 

### useful group-related commands

`groupadd [groupname]`
- create a new user group 

`groupdel [groupname]` 
- remove a group 

`newgrp [groupname]` 
- temporarily switch primary group ID in current shell 


### info & permissions 

`id [username]` 
- display UID, GID, & groups for a specific user 

`groups [username]` 
- list groups a user belongs to 

`chown [user]:[group] [file]`
- change ownership of a file or dir

`chgrp [group] [file]`
- change group ownership of a file or dir 

