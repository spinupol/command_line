# sort & remove duplicates
$ cat file
Linux
Solaris
Linux

$ sort -u file
Linux
Solaris

# sort with and without numerically
$ cat file
20
49
200

$ sort file
20
200
49

$ sort -n file
20
49
200

# sort reverse
$ sort -nr file
200
49
20

# sort multiple files
$ cat file1
19
5

$ cat file2
5
48

$ sort -n file1 file2
5
5
19
48

# sort on multiple fields
# -k2,2 means sort key starting and ending at column 2
 cat quota
fred 2000
bob 1000
an 1000
chad 1000
don 1500
eric 5000

$ sort -k2,2 -k1,1 quota
an 1000
bob 1000
chad 1000
don 1500
fred 2000
eric 5000

# check for sortedness
$ cat test
2
5
1

$ sort -c test
sort: test:3: disorder: 1

# complex example
# sort -t, -k2 | sort -t$'\t' -n -r -k2,2 for https://www.hackerrank.com/challenges/text-processing-sort-5
# sort by comma, pick field2, sort by tab numerically pick field 2 and end with 2 and sort in reverse order










