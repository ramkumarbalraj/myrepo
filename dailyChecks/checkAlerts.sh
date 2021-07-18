for i in `cat sites|cut -d, -f 1`
  do
    echo $i
    grep -i "${i%%*( )}" alert.$1
    if [ $? -eq 0 ]; then
      read
    fi
    echo
  done
mv alert.$1 archive/alert.$1.` date '+%d%m%y'`
#echo >alert.$1
