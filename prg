4A-
$ vi 4a.sh
  #! /bin/bash
   Threshold=80
   for path in `/bin/df -h |grep -vE ‘Filesystem/tmpfs’ |awk ‘ {print $5 }’|sed ‘s/%//g’`
   do
    echo “$path”
      if  [ $path -ge $Threshold ]; then
        df -h |grep $path% >> /home/exam/tt.txt
         find . -type f -size +500M >w.txt
        fi
       done
          Value=`cat /home/exam/w.txt|wc -l`
            if [ $Value -ge 1 ]; then
             echo “Yes directory contains file size more than 500M or near to 1GB”
           fi

Setting up a cron Job, go to terminal.
 $crontab -e




4B-
$ vi 4b.sh
#!/bin/bash
echo "read a string"
read string
words=$(echo -n "$string"|wc -w)
chars=$(echo -n "$string"|wc -c)
space=$(expr length "$string" - length `echo "$string"|sed "s/ //g"`)
specialsymbols=$(echo $string|grep -o [^A-Za-z0-9_[:space:]]|wc -l)
echo "The number of words = $words"
echo  "The number of characters = $chars"
echo "Number of white spaces = $space"
echo "Number of Special symbols =$specialsymbols"

Output:-
sh 4b.sh


