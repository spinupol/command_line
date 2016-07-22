grep  display lines matching pattern

pinup@DESKTOP-LAS6GPI ~
$ cat file4
abc
foox
$ grep o file4
foo
123-foo-456
This is line2 added to file2
#displays text that has "file"

$ grep file file4
$ grep -c file file4
2

# displays line with line number
$ grep -ni file file4
4:this is file 2
6:This is line2 added to file2