# BASIC LINUX COMMANDS

### File & Directory Manipulation

```Linux
$ pwd
Display path of current directory you're in

$ ls
Lists the files and folders in the current directory

$ ls -la (or $ ll)
Lists a detailed list of files and folders as well as hidden
```

---

### Change to a Specific Directory

```Linux
$ cd
Change to home directory

$ cd /user/Desktop/
Change to a directory called Desktop

$ ..
Move back one directory
```

---

### Creating a Directory/Folder

```Linux
$ mkdir <dirname>
Create a new directory

$ mkdir /home/Desktop/<dirname>
Create a directory in a specific location

$ nano <filename> (or $ vim <filename>)
Edit a file or create if it doesn't exist
```

---

### Copy, Move, & Rename Files & Directories

```Linux
$ cp <file1> <file2>
Create a copy of a file

$ cp -r <dir1> <dir2>
Create a copy of a directory and everything in it

$ cp <file1> /home/Desktop/file2
Create a copy of a file and name it file 2

$ mv <file> /home/Desktop
Move a file to a specific directory (overwrites any file with the same name)

$ mv <dir> /home/Desktop
Move a directory to another location

$ mv <dir1> <dir2>
Rename a file OR directory (dir1 to dir2)
```

---

### Delete Files

```Linux
$ rm <file>
Delete a <file>

$ rm -r <dir>
Delete a directory and it's contents
```

---

### Output & Analyze Files

```Linux
$ cat <files>
Display/Output the contents of a file

$ less <file>
Display the contents of a file with scroll capabilities (paginate) ability
```

---

### System & User Information

```Linux
$ cal
Disply monthly calendar

$ uptime
Check system uptime and currently logged in users

$ uname -a
Display system information

$ poweroff (or shutdown -P now)
Shutdown system

$ Reboot system
Reboot system
```

---

### View Disk & Memory Usage

```Linux
$ df -h
Display disk space usage

$ fdisk -l
List disk partition tables

$ free
Display memory usage
```

---

### View User Information

```Linux
$ whoami ($ sudo whoami to check sudo permissions)
Output your username

$ history
View a list of your previously executed commands
```

---

### Installing & Upgrading Packages

```Linux
$ apt-cache pkgnames
List all available packages

$ apt search <name>
Search for a packge and its description

$ apt install <name>
Install a package

$ apt update
Update list of available packges

$ apt upgrade ($ apt upgrade -Y to install all packages without prompts)
Install the newest version of available packages

$ apt dist-upgrade
Force upgrade packages

$ apt autoremove
Remove installed packages that are no longer needed

$ apt-get clean
Free up disk space by removing archived packages

$ apt remove <name>
Uninstall a package
```

---

### Process & Job Management

```Linux
$ top (use $ htop for better visuals)
Display running processes & system usage in real-time

$ ps
Display currently running processes

$ ps -u <user>
Display currently running processes of a user

$ kill <PID>
Kill a process by PID # (Process ID number)

$ killall <processes>
Kill all processes with the specified name

$ jobs
START, STOP, RESUME JOBS
---------------------------
Display current jobs

$ jobs -l
Display detailed info about each job

$ jobs -r
Display only running jobs

$ bg
View stopped background jobs or resume job in the background

$ fg
Resume recent job in the foreground

$ fg <job>
Bring specific job to the foreground
```

---

### Networking Utilities

```Linux
$ ping <host> (ex: $ ping xxx.xx.xx.xxx)
Ping a host

$ whois <domain/IP>
Get whois information about a domain or IP

$ dig <domain/IP>
Get DNS information

$ nslookup <NS>
Get nameserver information

$ ifconfig
Configure/display wireless network settings

$ iwconfig
Configure/display wireless network interfaces

$ netstat -r
Display kernal IP rounting tables

$ netstat -antp
Check for established and listenting ports/connections

$ arp -a
Display ARP cache tables for all interfaces
```
