# Day 4 Task: Basic Linux Shell Scripting for DevOps Engineers.

 ## What is Kernel

 The kernel is a computer program that is the core of a computer’s operating system, with complete control over everything in the system.
 
 ## What is Shell

 A shell is special user program which provide an interface to user to use operating system services. Shell accept human readable commands from user and convert them into something which kernel can understand. It is a command language interpreter that execute commands read from input devices such as keyboards or from files. The shell gets started when the user logs in or start the terminal.
 
 ## What is Linux Shell Scripting?

 A shell script is a computer program designed to be run by a linux shell, a command-line interpreter. The various dialects of shell scripts are considered to be scripting languages. Typical operations performed by shell scripts include file manipulation, program execution, and printing text.

 **Tasks**

 - Explain in your own words and examples, what is Shell Scripting for DevOps.

 :- Shell scripting is scripting language or like a programming lannguage for writing custom queries
 or commands in human readable form and run the same in terminal for kernal to understand and execute them.
 In context to devops , Shell scripting is a way of automating tasks in the shell (command line) of an operating system. It is often used in DevOps (a combination of software development and IT operations) to perform tasks such as setting up and maintaining infrastructure, deploying software updates, and monitoring systems.

 Eg - 

 # Install Apache web server
sudo apt-get install apache2

# Start Apache web server
sudo systemctl start apache2


 - What is `#!/bin/bash?` can we write `#!/bin/sh` as well?

 - `#!/bin/bash?` is called 'shebang' and is used to specify the interpreter for the scripts.
 in `#!/bin/bash?` case it is specifying that the script should be interpreted by the bash shell.

And yes we can write `#!/bin/sh` as well as in this case it is specifying the interpretrator 
to use the "bourne shell" which is type of a shell commonly found on Unix-like systems.
Some other common shells that can be used as interpreters include #!/bin/csh for the C shell and #!/bin/zsh for the Z shell.

It's important to note that the shebang must be the very first line of the script and must start with #!.

 - Write a Shell Script which prints `I will complete #90DaysOofDevOps challenge`
Ans - 
Step 1. -  create a shell file 
vishalsaxena@vishals-MacBook-Air GIT_pre % touch sample2.sh

Step 2. -Give execution permission to sample2.sh file 
vishalsaxena@vishals-MacBook-Air GIT_pre % chmod u+x sample2.sh

u+x = giving user/owner execution commands


Step 3. vi sample2.sh

edit the sample2.sh file using the vi editor and add the following line 
#!/bin/bash
echo -e "I will complete #90DaysOofDevOps challenge"

Step 4. Give command to execute or get the output

vishalsaxena@vishals-MacBook-Air GIT_pre % bash sample2.sh      

 OR

vishalsaxena@vishals-MacBook-Air GIT_pre % ./sample2.sh 

output
I will complete #90DaysOofDevOps challenge

 - Write a Shell Script to take user input, input from arguments and print the variables.

Ans - User input example

vishalsaxena@vishals-MacBook-Air GIT_pre % touch sample3.sh  #create a file 
vishalsaxena@vishals-MacBook-Air GIT_pre % vi sample3.sh     #edit the file
vishalsaxena@vishals-MacBook-Air GIT_pre % chmod u+x sample3.sh #Provide user permission to execute
vishalsaxena@vishals-MacBook-Air GIT_pre % bash sample3.sh      #execute the file
vishal                                #During execution interpretartor waiting for input from user
My name is vishal
vishalsaxena@vishals-MacBook-Air GIT_pre % cat sample3.sh    #showing content of sample3.txt
#!/bin/bash

read name
var=name

echo -e "My name is $name"

Input from arguments and print the variables example below

vishalsaxena@vishals-MacBook-Air GIT_pre % vi sample3.sh       
vishalsaxena@vishals-MacBook-Air GIT_pre % bash sample3.sh vishal
My name is vishal
vishalsaxena@vishals-MacBook-Air GIT_pre % cat sample3.sh        
#!/bin/bash

echo -e "My name is $1"

 - Write an Example of If else in Shell Scripting by comparing 2 numbers
#!/bin/bash

echo -e "Condition 1 checking number is odd or even" 
echo -e "Condition 2 checking file is present in current directory or not"
echo -e "Condition 3 comparing 2 numbers"

echo "*********************************************************************"

echo "Condition 1"

echo -e "Entered number to check even or odd is :- $1"

if [ $(( $1 % 2 )) -eq 0 ]
then
  echo "Number is even"
else
  echo "Number is odd"
fi

echo "*********************************************************************"

echo -e "Condition 2"

path=$(pwd)

echo -e "Current directory which you are in right now is: $path "

echo -e "This is the parameter $2"

if [ -f $2 ]
then
 echo -e "File exist in the path."
else
 echo -e "File does not exist in the path."
fi	

echo "*********************************************************************"

echo "Condition 3"

echo -e "This is the first number parameter $3"
echo -e "This is the second number parameter $4"

if [ $3 -gt $4 ]
then
  echo "$3 is greater than $4"
else
  echo "$4 is greater than $3"
fi    
echo "*********************************************************************"

 Was it difficult?
 No its not difficult at all 

 - Post about it on LinkedIn and Let me know :)
will do it !!
 Article Reference: [Click here to read basic Linux Shell Scripting](https://devopscube.com/linux-shell-scripting-for-devops/)

 YouTube Vedio: [EASIEST Shell Scripting Tutorial for DevOps Engineers](https://www.youtube.com/watch?v=_-D6gkRj7xc&list=PLlfy9GnSVerQr-Se9JRE_tZJk3OUoHCkh&index=3)