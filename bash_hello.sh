#! /bin/bash
#echo "Hello world"


#->Simple echo cmd

#echo $PWD
#echo $BASH
#echo $HOME
#echo $BASH_VERSION

#cd /Users

#echo $PWD



#->cmd with variable
#name=Mark
#echo The name is $name



#cmd->reading the variable or taking he input
#echo "Enter name:"
#read name
#echo "Entered name : $name"


#->sum of two variable
#echo "Sum:"
#read x
#read y
#sum=$(($x+$y))
#sum ='expr $x + $y'
#echo "X+Y: $sum"



#read -p "Enter the 1st no:" n1
#read -p "Enter the 2nd no:" n2
#sum=$(($n1 + $n2))
#echo "$sum"


#->username and password
#read -p "Username:" user_name
#read -sp "password:" password
#echo "username : $user_name"
#echo "password : $password"



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



#->string operation

# if [""]






# then
#     echo "Count is greater than Var"
# fi



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


#->running logstash and kibana through bash script

cd /Users/pratyushshishodiya/Desktop/elasticsearch-8.3.3
bin/elasticsearch

cd /Users/pratyushshishodiya/Desktop/kibana-8.3.3
bin/kibana
