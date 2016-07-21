# join basic syntax, only works on sorted files
cat > testfile1
a India
b US
f Australia

cat > testfile2
a NewDelhi
b Washington

join -a1 testfile1 testfile2
a India NewDelhi
b US Washington
f Australia

# join on different fields in different file ignoring case
cat > testfile2
NewDelhi A
Washington B

join -i -1 1 -2 2 testfile1 testfile2
a India NewDelhi
b US Washington

