while getopts n:o:p: options; do
	case ${options} in
		n) variable1=${OPTARG};;
		o) variable2=${OPTARG};;
		p) variable3=${OPTARG};;
		*) echo "please provide valid inputs"; exit;;
	esac
done
if [[ -n $variable1 ]]; then
	echo "$variable1 exists"
fi
echo $variable1 $variable2 $variable3
if [[ -z $variable1 ]] || [[ -z $variable2 ]] || [[ -z $variable3 ]]; then
	exit 1
fi
echo "$@"
echo "$#"
read sample
a=2
b=2
if [[ $a -lt $b ]]; then
	echo $a,$b
elif [[ $a -gt $b ]]; then
	echo "a greater than b"
else
	echo "a equal to b"
fi

IFS="\n"
for i in $(cat test.py); do
	echo $i
done
for (( i=1; i<10; i++ )); do
	echo $i
done
for i in {1..5..2}; do 
	echo $i
done
arra=([1]=1, [2]=10, [10]=15, [11]=11, [16]=3)
for i in ${arra[@]}; do
	echo $i
done
echo ${arra[10]} # to fetch value at particular index
echo ${!arra[@]} # to check the keys of array
echo ${#arra[@]} # to check the length of array
echo "a before $a"
((a++))
echo "printing a after increment $a"
b=$((b+1))
b=$(($b+1))
if [[ $? -eq 0 ]]; then
	echo "previous statement is successfull"
fi
b=
if [[ -z $b ]]; then
    echo "variable b doesnt exist"
fi
file=test.py
while read -r line;
do
	echo "$line"
	echo "print length of line ${#line}"
	echo "replacing print with echo ${line//print/echo}"
done < $file
# testing case
department="Computer Science"
read department

case $department in
	"Computer Science")
		echo "department is $department"
		;;
	"IT" | "Information Technoloy")
		echo "departmet is $department"
	        ;;
	*)
		echo "printing to default"
		;;
esac
sum(){
sum=0
for  i in $@; do
	sum=$((sum+i))
done
return $sum
}
sum 1 2 3
echo $?
