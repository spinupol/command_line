$ echo hello
hello

$ echo 'This is the first line'; echo 'This is the second line'
This is the first line
This is the second line

$ Variable="Some string"
$ #Variable= 'Some string' is incorrect
$ echo $Variable
Some string
$ echo "$Variable"
Some string
$ echo '$Variable' #note that Variable value was not substituted
$Variable
$ echo ${Variable}
Some string
$ Length=7
$ echo ${Variable:0:Length}
Some st
$ echo ${Foo:-"DefaultValueIfFooIsMissingOrEmpty"}
DefaultValueIfFooIsMissingOrEmpty

$ echo {1..10}
1 2 3 4 5 6 7 8 9 10

$ echo {a..z}
a b c d e f g h i j k l m n o p q r s t u v w x y z

$ echo "Im in $(pwd)"
Im in /home/pinupols
$ echo "Im in $PWD"
Im in /home/pinupols

$ echo "Whats your name?"
Whats your name?
$ read Name
sai
$ echo Hello, $Name!
Hello, sai!
$ echo $USER
pinupols

$ if [ $Name != $USER ]
> then
>     echo "Your name isn't your username"
> else
>     echo "Your name is your username"
> fi
Your name isnt your username

$ echo "Always executed" || echo "Only executed if first command fails"
Always executed
$ echo "Always executed" && echo "Only executed if first command does NOT fail"
Always executed
Only executed if first command does NOT fail

$ if [ "$Name" == "Steve" ] && [ "$Age" -eq 15 ]
> then
>     echo "This will run if $Name is Steve AND $Age is 15."
> fi
$ if [ "$Name" == "Daniya" ] || [ "$Name" == "Zach" ]
> then
>     echo "This will run if $Name is Daniya OR Zach."
> fi

$ echo $(( 10 + 5 ))
15

$ echo "this is a line" > file.txt
$ Contents=$(cat file.txt)
$ echo "START OF FILE\n$Contents\nEND OF FILE"
START OF FILE\nthis is a line\nEND OF FILE

$ mkdir Documents
$ pwd
/home/pinupols
$ cd ~/Documents/..
$ pwd
/home/pinupols
$ mkdir -p myNewDir/with/intermediate/directories
$ mkdir  myNewDir/with/intermediate/directory

$ echo "There are $(ls | wc -l) items here."
There are 2 items here.
$ echo "There are `ls | wc -l` items here."
There are 2 items here.

$ case "$Variable" in
>     #List patterns for the conditions you want to meet
>     0) echo "There is a zero.";;
>     1) echo "There is a one.";;
>     *) echo "It is not null.";;
> esac
It is not null.

$ echo $Variable
Some string
$ for Variable in {1..3}
> do
>     echo "$Variable"
> done
1
2
3

$ for ((a=1; a <= 3; a++))
> do
>     echo $a
> done
1
2
3

$ for Variable in file1 file2
> do
>     cat "$Variable"
> done
cat: file1: No such file or directory
cat: file2: No such file or directory

$ echo "this is file1" > file1
$ echo "this is file2" > file2

$ for Variable in file1 file2; do     cat "$Variable"; done
this is file1
this is file2

$ for Output in $(ls)
> do
>     cat "$Output"
> done
cat: directories: Is a directory
cat: directory: Is a directory
this is file1
this is file2

$ while [ true ]
> do
>     echo "loop body here..."
>     break
> done
loop body here...

$ function foo ()
> {
>     echo "Arguments work just like script arguments: $@"
>     echo "And: $1 $2..."
>     echo "This is a function"
>     return 0
> }

$ bar ()
> {
>     echo "Another way to declare functions!"
>     return 0
> }

$ foo "My name is" $Name
Arguments work just like script arguments: My name is sai
And: My name is sai...
This is a function

pinupols@CMK1F72 ~
$ cat myparams.sh
for ((i=0; i<=$#; i++)); do
  echo "parameter $i --> ${!i}"
done
echo "$@"
echo
echo 'for ((i=0; i<=$#; i++)); do
  echo "parameter $i --> ${!i}"
done
echo "\$@"'
echo
echo "'\$1, \$2, \$3, \$4..'$1, $2, $3, $4... are the positional parameters."
echo "'\$@ :'$@"
echo "'\$* :'$*"
echo "'\$# :'$# is the number of positional parameters."
echo "'\$? :'$? is the most recent foreground pipeline exit status."
echo "'\$0 :'$0 is the name of the shell or shell script."

pinupols@CMK1F72 ~
$ ./myparams.sh "hello" "how are you" "i am fine" 4 5 6 7 8 9 10 11
parameter 0 --> ./myparams.sh
parameter 1 --> hello
parameter 2 --> how are you
parameter 3 --> i am fine
parameter 4 --> 4
parameter 5 --> 5
parameter 6 --> 6
parameter 7 --> 7
parameter 8 --> 8
parameter 9 --> 9
parameter 10 --> 10
parameter 11 --> 11
hello how are you i am fine 4 5 6 7 8 9 10 11

for ((i=0; i<=$#; i++)); do
  echo "parameter $i --> ${!i}"
done
echo "\$@"

'$1, $2, $3, $4..'hello, how are you, i am fine, 4... are the positional parameters.
'$@ :'hello how are you i am fine 4 5 6 7 8 9 10 11
'$* :'hello how are you i am fine 4 5 6 7 8 9 10 11
'$# :'11 is the number of positional parameters.
'$? :'0 is the most recent foreground pipeline exit status.
'$0 :'./myparams.sh is the name of the shell or shell script.
