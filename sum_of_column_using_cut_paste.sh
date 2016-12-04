[app_domt_qa@ip-10-131-66-2 sailendra]$ cat tad.csv
Reynold,Schmeler,194000
Kayli,Stamm,118000
Javon,Funk,102000
Benedict,Von,39000
Rowena,Little,113000
Heaven,Aufderhar,187000
Nathanial,White,56000
Wilhelmine,Murazik,73000
Jace,Kovacek,88000
Adele,Medhurst,118000
Garland,Farrell,172000
[app_domt_qa@ip-10-131-66-2 sailendra]$ a=`cut -d"," -f3 tad.csv | paste -sd+ | bc`
[app_domt_qa@ip-10-131-66-2 sailendra]$ b=`wc -l < tad.csv`
[app_domt_qa@ip-10-131-66-2 sailendra]$ echo $a $b
1260000 11
[app_domt_qa@ip-10-131-66-2 sailendra]$ echo $a/$b | bc -l
114545.45454545454545454545

#Same script in python one-liner
[app_domt_qa@ip-10-131-66-2 sailendra]$ python -c "import os;print os.system('cut -d"," -f3 tad.csv > fin');print sum([int(s.strip()) for s in open('fin').readlines()])/sum(1 for line in open('fin'))"
0
114545
