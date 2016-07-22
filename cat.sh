# Creating, Appending and Listing multiple files with cat
$ cat file1
abc

$ cat > file2
this is file 2

$ cat >> file2
This is line2 added to file2

$ cat file1 file2
abc
this is file 2
This is line2 added to file2

# Combile multiple files into 1 and display it
$ cat file1 file2 > file3 ; cat file3
abc
this is file 2
This is line2 added to file2

# Display line numbers for all lines with -n or non empty lines with -b
spinupol:~ $ cat -n file1                                                                                                                           
     1  this is line1
     2
     3  this is line2
spinupol:~ $ cat -b file1                                                                                                                           
     1  this is line1

     2  this is line2

# Dsiplay end of line and tab characters
$ cat -neT program.pl
1 #!/usr/bin/perl$
3     $
4 if( 2 ge 3) {$
5 ^Iprint "greater\n";$
6 } else {$
7 ^Iprint "lesser\n";      $
8 }$


