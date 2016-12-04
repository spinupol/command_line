[ec2-user@ip-172-31-60-54 ~]$ ./sum.sh 130000
The threshold passed was 130000
There were 7 numbers greater than the threshold and the average of salaries greater than threshold was:  75714.3
[ec2-user@ip-172-31-60-54 ~]$ cat sample.csv
"first","last","salary"
"Glenda","Upton","72000"
"Alvina","Mertz","44000"
"Jany","Bradtke","134000"
"Cassandre","Witting","184000"
"Murray","Schamberger","117000"
"Laverne","Keeling","116000"
"Jasper","Heaney","130000"
"Sophie","Nolan","9000"
"Ari","Goodwin","87000"
[ec2-user@ip-172-31-60-54 ~]$ cat sum.sh
#!/bin/bash
threshold=$1
echo "The threshold passed was ${threshold}"
cat sample.csv|cut -d "," -f 3 sample.csv|sed -e 's/^"//' -e 's/"$//' | awk  '$1 > "'"$threshold"'" {print $1}'| awk ' {sum+=$1} END {print "There were",NR,"numbers greater than the threshold and the average of salaries greater than threshold was: ",sum/NR}'

[ec2-user@ip-172-31-60-54 ~]$ ./sum.sh 130000
The threshold passed was 130000
There were 7 numbers greater than the threshold and the average of salaries greater than threshold was:  75714.3
[ec2-user@ip-172-31-60-54 ~]$ ./sum.sh 100000
The threshold passed was 100000
There were 10 numbers greater than the threshold and the average of salaries greater than threshold was:  89300
