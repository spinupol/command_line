$ cat > test
Linux
Unix
Solaris
HPUX
AIX

# paste all lines in 1 line
$ paste -s test
Linux   Unix    Solaris HPUX    AIX

# paste with a delimiter 3 columns per line
$ paste -d':'  - - -< test
Linux:Unix:Solaris
HPUX:AIX:

# paste with a delimiter 2 columns per line
$ paste -d':' - -< test
Linux:Unix
Solaris:HPUX
AIX:

# paste with multiple delimiters
$ paste -d':,' - - -< test
Linux:Unix,Solaris
HPUX:AIX,

$ cat file2
Suse
Fedora
CentOS
OEL
Ubuntu

# paste multiple files with , delimiter
$ paste -d, test file2
Linux,Suse
Unix,Fedora
Solaris,CentOS
HPUX,OEL
AIX,Ubuntu

# paste with \n delimiter or 1 line from each file ;-)
$ paste -d'\n' test  file2
Linux
Suse
Unix
Fedora
Solaris
CentOS
HPUX
OEL
AIX
Ubuntu
