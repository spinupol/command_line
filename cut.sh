$ cat test.txt
cat command for file oriented operations.
cp command for copy files or directories.
ls command to list out files and directories with its attributes.

# cut few columns or column range from each line 
# -c3- means from column 3 till end
# -c-8 means till column 8
cut -c2,4 test.txt
a
pc
sc
cut -c2-4 test.txt
at
p c
s c

# cut with delimited file (fields 1 to 4 and 6 and 7)
grep "/bin/bash" /etc/passwd | head -1
abc:x:796:419:AAA BBB:/export/home/ran:/bin/bash
grep "/bin/bash" /etc/passwd | cut -d':' -f1-4,6,7 | head -1
abc:x:796:419:/export/home/ran:/bin/bash

# use cut command only on lines with specific delimiter
[app_cboerpt_qa@ip-10-131-68-114 sailendra]$ cat test1.txt
cat command for file oriented operations.
cp command for copy files or directories.
ls command to list out files and directories with its attributes.
cut command / check /

cut -d'/' -s -f2 test1.txt
 check

# select all fields except specified fields
cut -d' ' --complement -f2-5 test.txt
cat operations.
cp or directories.
ls files and directories with its attributes.

# cut by  delimiter \001 and replace output delimited by  space and use awk on top
cut -d$'\001' -f4,6 --output-delimiter=' ' sip_utp_trade_sm_13245_0 | awk '$1 == "E" && substr($2,1,5) == "16:30"  { print $0 }' | wc -l


