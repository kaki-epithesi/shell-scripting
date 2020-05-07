#SIMPLE SHELL SCRIPTING

create a simple .sh file

```
root@kali:~#vi try.sh

#!/bin/bash/

echo "1st Shell scripting"

root@kali:~# chmod +x try.sh
root@kali:~# ./try.sh
hello world
```
---
**TIPS**

For executing a .sh file you cane use ./{file_name}\
also\
root@kali:~#bash -f {file_name}\
---

**Using conditional statements**

```
root@kali:~#vi ifelse.sh

#!/bin/bash/

var1=7
var2=12

if [ $var1 > $var2 ]
then
        echo "var1 is greater than var2"
elif [ $var1 == $var2 ]
then
        echo "var1 is equal to var2"
else
        echo "var2 is greater than var1"
fi

root@kali:~# chmod +x ifelse.sh
root@kali:~# ./ifelse.sh
var1 is greater than var2

```
**Using logical 'and' 'or' and dynamic variable**

```

#!/bin/bash

if (( $1 > $2 & $1 > $3 ))\
then\
	echo "var1 is greatest"\
elif (( $1 == $2 || $3 == $2 || $1 == $3 ))\
then\
	echo "any two or all three are same"\
else\
	echo "no condtion"\
fi\

root@kali:~# ./ifelse.sh 12 23 12
any two or all three are same
root@kali:~# ./ifelse.sh 35 2 19
var1 is greatest
root@kali:~# ./ifelse.sh 5 14 12
no condtion

```
**Switch Case**

```
root@kali:~#vi case.sh

#!/bin/bash/

case $1 in
        "if")
                echo "if condition"
        ;;
        "elif")
                echo "elif condition"
        ;;
        "else")
                echo "else condition"
        ;;
esac

root@kali:~# chmod +x case.sh
root@kali:~# ./case.sh if
if condition
root@kali:~# ./case.sh elif
elif condition
root@kali:~# ./case.sh else
else condition

```

**LOOP STRUCTURES**

**FOR LOOP**

```
root@kali:~#vi for.sh

#!/bin/bash/

for i in 1 2 3 4 5
do
        echo " $i times this statement executed "
done

for (( i=0 ; i<=5 ; i++ ))
do
        echo " $i "
done

*root@kali:~# chmod +x for.sh
root@kali:~# ./for.sh
 1 times this statement executed
 2 times this statement executed
 3 times this statement executed
 4 times this statement executed
 5 times this statement executed
 0
 1
 2
 3
 4
 5

 ```
**WHILE LOOP**\

---
**NOTE**
'-lt' is '<'\
'-le' is '<='\
'-gt' is '>'\
'-ge' is '<='\
'-ne' is '!='\
'-e'  is '=='\

---

```
**root@kali:~#vi while.sh**\

#!/bin/bash\

i=0\

while [ $i -lt 5 ]\
do\
        echo " printing $i times "\
        i=`expr $i + 1`\
done\

**root@kali:~# chmod +x while.sh**\
**root@kali:~# ./while.sh**\
 printing 0 times\
 printing 1 times\
 printing 2 times\
 printing 3 times\
 printing 4 times\

 ```
