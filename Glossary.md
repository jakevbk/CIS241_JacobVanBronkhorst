**rm** - A command used to remove a file from the filesystem. Use the -r flag to remove recursively. Use the -f flag to force the operation without checking 	with the user. 
```
#remove the folder called folderOne recursively without checking with user
rm -rf folderOne
```

**chmod** - A command used to change permission files. What group + permissions. u  = user, g  = group, o  = other. Can use a combination such as GU + ..
  Permissions are w = write, r = read, x = excute. Permsissions can also be given in Octals such as 611.
```
#Change the permission to allow Group to have read and execute permission of a file.
chmod g+rx
```

**ls** - List directories. Use the -l flag for long form. Use the -a flag to show all included those hidden aka started with '.' or '..'
```
#Show all directories in home directory in long form
ls -l
```

**stat** - Show when a file was accessed, modified, the byte size of a file, and file permissions.
```
#see who has access and what time Glossary file was modified
stat Gloassary
```

**mkdir** - Make a new directory and name it.
```
#make a directory called Assignments
mkdir Assignments
```

**cp** - Create a copy of a file with the new filename or directories.
```
#Create a copy of the file homework and name it doneHW
cp homework doneHW
```

**chown** - Change the ownership of a file or directory.
```
#Change the owner to woodriir for the file of TeacherStuff
chown woodriir TeacherStuff
```

**mv** - Move(rename) a file or directory.
```
#Rename the file blah to blah2
mv blah blah2
```

**cat** - Concatenate and print out file in standard output. Use -A flag to print all.
```
#Print out the contents of vanbronj.txt
cat vanbronj.txt
```

**touch** - Change timestamp of a file, but also can be used to create a file.
```
#Create a file called file1 with a timestamp of the current time
touch file1
```

**cd** - Change the directory you are in.
```
#Change directory to home/woodriir/241
cd home/woodriir/241
```

**pwd** - Show present working directory.
```
#Show what directory I am currently in.
pwd
```

**man** - Gives a manual for a specified command.
```
#Show the manual for the 'touch' command.
man touch
```

**ln** - Make links between files.
```
#Link file1 to file2 to the same data
ln file1 file2

```

**chgrp** - Change group ownerships.
```
#Change group ownership of file1 to Friends(group)
chgrp Friends file1
```

**clear** - A command that clears a terminal screen.
```
#Clear previous commands on terminal screen
clear
```

**whoami** - Display the name of the current user
```
#Display name of user
whoami
```

**wc** - Command to display the number of lines, words, and bytes in one or more files
```
#Display lines, words, and bytes in the file file1
wc file1
```

**vim** - Use the vim editor on a file.
```
#Edit glossary with the vim editor
vim glossary
```

**tr** - Reads standard input and then translates it by piping. There are many flags for this one for example --delete '....' will delete all the ... chars.
```
#Translate the characters 123 to abc
echo 123 | tr '123' 'abc'
```

**uniq** - Command to display input, removing all but one copy of successive repeated lines. -c flag counts consecutive occurences
```
#Display number of consecutive occurrences of each line
uniq -c fileCount
```

**sort** - Sort or merge files. Default is alphabetical. -n flag sorts by numbers.
```
#Sort file1 numerically
sort -n file1
```

**date** - Display current date or modify the date.
```
#Display date and time
date
```

**more** - Show more of a file while scrolling
```
#Display more of file1
more file1
```

**less** - Display less of a file. This will do so by 1 screen/page at a time.
```
#Display file1 in a lesser matter
less file1
```

**echo** - Command to display a message by copying an argument.
```
#Display machine type and details
echo $MACHTYPE
```

**cut** - Command that selects characters or fields from lines of input and writes them to standard output.
```
#cut field 5 using the comma as a separator
cut -f5 -d ,
```
