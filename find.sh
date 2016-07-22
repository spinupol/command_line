# to find files in the path that match expression
$ find . -iname "*.php"
./test1.php
./test2.php
./test5.php

# to find files NOT matching the expression
$ find . -not -iname "*.php"
./test3.py
./test4.sh

#to find by modified time i.e 10 old  and less than 13 days new in current directory
find . -mtime +10 -mtime 13

# find all files greater than size of 1mg
find . -msize +1MG

# limit search to directory level with mindepth & maxdepth
find -maxdepth 2 -name passwd
./etc/passwd
find / -maxdepth 3 -name passwd
./usr/bin/passwd
./etc/pam.d/passwd
./etc/passwd
find -mindepth 3 -maxdepth 5 -name passwd
./usr/bin/passwd
./etc/pam.d/passwd

# applycing exec command on the results on a find command
$ find . -iname *.php -exec md5sum {} \;
d41d8cd98f00b204e9800998ecf8427e *./dir3/test1.php
d41d8cd98f00b204e9800998ecf8427e *./dir3/test2.php

# find by permisisons (ex find files by perssion read to group)
find . -perm -g=r -type f -exec ls -l {} \;
-rw-r--r-- 1 root root 0 2009-02-19 20:30 ./everybody_read
-rwxrwxrwx 1 root root 0 2009-02-19 20:31 ./all_for_all
----r----- 1 root root 0 2009-02-19 20:27 ./others_can_only_read
-rw-r----- 1 root root 0 2009-02-19 20:27 ./others_can_also_read

# find 0 byte files in current directory
find ~ -empty

# find all directories from current directory
find . -type d

# find all files from current directory
find . -type f




