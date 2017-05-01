# tr is for translating, deleting or squeezing repeating characters
[app_cboerpt_qa@ip-10-131-68-114 sailendra]$ echo "abcDEF" | tr a-z A-Z
ABCDEF

# read from inputfile and convert {} to [] and print on screen
[app_cboerpt_qa@ip-10-131-68-114 sailendra]$ cat > inputfile
({([}})
[app_cboerpt_qa@ip-10-131-68-114 sailendra]$ tr '{}' '[]' < inputfile > outputfile && cat outputfile
([([]])

# translate whitespace to tab
echo "This is for testing" | tr [:space:] '\t'	
This    is      for     testing

# squeeze repetition of characters (multiple spaces to one)
echo "This  is         for testing" | tr -s [:space:] ' '
This is for testing

# delete specified characters
echo "the geek stuff" | tr -d 't'
he geek suff

# delete numbers from alphanum
echo "my username is 432234" | tr -d [:digit:]
my username is

# join all lines ina file into 1
$ cat file2
Suse
Fedora
CentOS
OEL
Ubuntu

tr -s '\n' ' ' < file2
Suse Fedora CentOS OEL Ubuntu

