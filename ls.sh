# Display 1 file per line
$ ls -1
bin
boot
cdrom

# Long listing of file/directory
$ ls -l
-rw-r----- 1 ramesh team-dev 9275204 Jun 13 15:27 mthesaur.txt.gz
# - normal file
# d directory
# s socket file
# l link file
# [user, group, world] [read, write, execute permissions]
# number of links (1 in this example)
# owner
# group
# size in bytes
# last modified date and time
# filename

# Human readable format 
$ ls -l
-rw-r----- 1 ramesh team-dev 9275204 Jun 12 15:27 arch-linux.txt.gz*
$ ls -lh
-rw-r----- 1 ramesh team-dev 8.9M Jun 12 15:27 arch-linux.txt.gz

# Tip (Awlays use ls-ltr to list the last modified files in reverse if number of files crosses several pages)

# Classification of files
$ ls -F
Desktop/  Documents/  Ubuntu-App@  firstfile  Music/  Public/  Templates/
# / directory
# (nothing) normal file
# @ link
# * executable file

# List files and directories in colors
$ ls --color=auto
# directories blue, files in regular color

# Recursively list all files
$ ls  -R 

./workspace/main:
dir1/  dir2/  dir3/

./workspace/main/dir1:
fil2.c  file4.l

./workspace/main/dir2:
fil2.c  fil4  fil5  file4.c  file4.l

#list only directories
pinup@DESKTOP-LAS6GPI ~
$ ls -F | grep /
dir1/
dir2/
dir3/
dir4/
testf/

pinup@DESKTOP-LAS6GPI ~
$ ls -ltr | grep ^d
drwxr-xr-x+ 1 pinup pinup   0 Jul 16 12:50 testf

pinup@DESKTOP-LAS6GPI ~
$ ls -ltr | grep ir
drwxr-xr-x+ 1 pinup pinup   0 Jul  2 17:11 dir3
drwxr-xr-x+ 1 pinup pinup   0 Jul  2 17:11 dir3
drwxr-xr-x+ 1 pinup pinup   0 Jul 16 11:25 dir4

# list only files
$ ls -ltr | grep ^-
-rw-r--r--  1 pinup pinup 439 Jun  4 00:18 test
-rw-r--r--  1 pinup pinup  20 Jun 30 22:42 file1
-rw-r--r--  1 pinup pinup  65 Jul 16 11:47 file3

