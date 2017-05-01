$ cat test
Linux
Unix
Solaris
HPUX
AIX
#simple xargs example
$ cat test | xargs -n 2
Linux Unix
Solaris HPUX
AIX
#xargs in conjunction with find
$ touch one.c one.h two.c two.h
$ find . -iname "*.c" | xargs md5sum
d41d8cd98f00b204e9800998ecf8427e  ./one.c
d41d8cd98f00b204e9800998ecf8427e  ./two.c

$ cat file2
Suse
Fedora
CentOS
OEL
Ubuntu
#xargs with grep
$ find . -type f -iname "*" | xargs grep 'Suse'
./file2:Suse
$
#xargs with head
$ find . -name ".txt" | xargs head -n 1
