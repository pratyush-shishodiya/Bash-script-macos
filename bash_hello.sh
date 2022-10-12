#! /bin/bash

#-----------------------------------------------------------------------
#echo "Hello world"
#->Simple echo cmd
#echo $PWD
#echo $BASH
#echo $HOME
#echo $BASH_VERSION
#cd /Users
#echo $PWD

#----------------------------------------------------------------------

#->cmd with variable
#name=Mark
#echo The name is $name

#----------------------------------------------------------------------

#cmd->reading the variable or taking he input
#echo "Enter name:"
#read name
#echo "Entered name : $name"

#-----------------------------------------------------------------------
#->sum of two variable
#echo "Sum:"
#read x
#read y
#sum=$(($x+$y))
#sum ='expr $x + $y'
#echo "X+Y: $sum"

#----------------------------------------------------------------------

#read -p "Enter the 1st no:" n1
#read -p "Enter the 2nd no:" n2
#sum=$(($n1 + $n2))
#echo "$sum"

#----------------------------------------------------------------------
#->username and password
#read -p "Username:" user_name
#read -sp "password:" password
#echo "username : $user_name"
#echo "password : $password"

#-----------------------------------------------------------------------

#->passing the argument
#  echo $1 $2 $3  '> echo $1 $2 $3'
#  args=("$@")
# echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}



#echo $@  #->printing all argument pass through the DS
#echo $#  #->no. of argument passing through it.


#----------------------------------------------------------------------------#

#count=10
#read var


#->integers operation
#if [ $count -eq 10 ]
# if [ $count -ne 10 ]
# if [ $count -gt 10 ]
# if [ $count -lt 10 ]
# if [ $count -ge 10 ]
# if [ $count -le 10 ]


# if (( "$a" < "$b" ))
# if (( "$a" > "$b" ))
# if (( "$a" <= "$b" ))
# if (( "$a" >= "$b" ))

#-------------------------------------------------------------------

#->string operation

# if [""]






# then
#     echo "Count is greater than Var"
# fi

#---------------------------------------------------------------------

#FILE FOUND SCRIPT

# echo -e "Enter the name of file: \c"
# read File_name

# cd /Users/pratyushshishodiya/Desktop/playbook_ansible_elk

# if [ -e $File_name ]
# then
#     echo "$File_name found"
#     ansible-playbook main.yml
# else
#     echo "$File_name not found"
# fi

#----------------------------------------------------------------------
#->running logstash and kibana through bash script

# cd /Users/pratyushshishodiya/Desktop/elasticsearch-8.3.3
# bin/elasticsearch

# cd /Users/pratyushshishodiya/Desktop/kibana-8.3.3
# bin/kibana

# cd /Users/pratyushshishodiya/Desktop/xyz
# cat sample.py

#-------------------------------------------------------------------------
#Sample scripting for file check and creating system::::
# cd /Users/pratyushshishodiya/Desktop/xyz
# #checking file is present or not
# echo -e "enter the file name: \c"
# read File_name
# if [ -e $File_name ]
# then
#     echo "File found"
#     cat $File_name
# else
#     echo "File not found,Do you want to create new file?"
#     read choice
#     var1=yes
#     var2=no

#     if [ $choice == $var1 ]
#     then
#         touch $File_name
#         vim $File_name
#         cat $File_name
#     else
#         echo "byeee"
#     fi
# fi
#--------------------------------------------------------------------------------

# read file_name
# if [ -e $file_name ]
# then
#     if [ -w $file_name ]
#     then 
#         echo "Type something:"
#         cat >> $file_name
#     else
#         echo "The file do not"
#     fi
# else    
#     echo "File not found"
# fi




#----------------------------------------------------------------------------------
#and operator.

# age=25
# #if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
# if [ "$age" -gt 18  -a "$age" -lt 30 ]
# then 
#     echo "Valid age"
# else 
#     echo "Not a valid age"
# fi


#-------------------------------------------------------

# age=25
# #if [ "$age" -gt 18 ] || [ "$age" -eq 18 ]
# if [ "$age" -gt 18  -o "$age" -eq 18 ]
# then
#     echo "Valid age"
# else    
#     echo "Not a valid age"
# fi


#-------------------------------------------------------

# echo "Enter the two number:"
# read n1
# read n2


# # echo $(( n1 + n2 ))
# # echo $(( n1 - n2 ))
# # echo $(( n1 * n2 ))
# # echo $(( n1 / n2 ))


# echo $(expr $n1 + $n2 )
# echo $(expr $n1 - $n2 )
# echo $(expr $n1 * $n2 )
# echo $(expr $n1 / $n2 )



#----------------------------------------------------------------

#Decimal operater
# n1=20.5
# n2=5

# echo "$n1 + $n2 " |bc
# echo "$n1 - $n2 " |bc
# echo "$n1 * $n2 " |bc
# echo "scale=2;$n1 / $n2 " |bc

#----------------------------------------------------------------

# case expression in
#     pattern1 )
#         statements ;;
#     pattern2 )
#         statements ;;
#     ...
# esac 


# echo "Enter the keyword:"
# read vehicle

# case $vehicle in
#     "car" )
#         echo "The vehicle is car " ;;
#     "Truck" )
#         echo "The vehicle is truck" ;;
#     "Bike" )
#         echo "The vehicle is bike" ;;
#     "Auto" )
#         echo "The vehicle is Auto"  ;;
#     * )
#         echo "Unknown vehicle" ;;
# esac


# echo "Enter the value:"
# read value

# case $value in
#     [1-10] )
#         echo "The value is less than 10 " ;;
#     [10-20])
#         echo "The value is more than 10 but less than 20 " ;;
#     [20-30])
#         echo "The value is more than 20 but less than 30 " ;;
#     [30-40])
#        echo "The value is more than 30 but less than 40 " ;;
#     * )
#        echo "The value is undefined" ;;
# esac

# echo -e "Enter the value: \c"
# read value

# case $value in
#     [a-z] )
#         echo "Between a-z" ;;
#     [A-Z] )
#         echo "Between A-Z " ;;
#     [0-9] )
#         echo "Integers" ;;
#     ? )
#        echo "Diffrent pattern" ;;
#     * )
#        echo "The value is undefined" ;;
# esac


#--------------------------------- ---------------------------
# arr=('a' 'b' 'c')

# echo "${arr[@]}"
# echo "${arr[0]}"
# echo "${arr[1]}"
# echo "${arr[2]}"      ----------->particular index
# echo "${!arr[@]}"    ----------->no. of index
# echo "${#arr[@]}"   ----------->total no of values

# arr[3]='d'        --------------->adding a new var
# echo "${arr[@]}"
# unset arr[2]     -------------->deleting a array var
# echo "${arr[@]}"


# string='abcdefghijk'    ----------->variable
# echo "${string[@]}"
# echo "${string[1]}"













