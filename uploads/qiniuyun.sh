h=$2
echo "listbucket name : $1"
echo "domain name : $2"
touch list.txt
qshell listbucket $1 list.txt
echo "read listbucket success >>>>>>>>>>>>"
cat list.txt | awk '{print "![]('$h'"$1")"}' >final.txt
echo "write to final.txt success >>>>>>>>>>>>"
rm list.txt
echo "finally"
