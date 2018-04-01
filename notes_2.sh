#!/bin/bash

# Notes from section 2 of Hartl's "Learn Enough Command Line to be Dangerous" tutorial

# ******************** 2: Manipulating Files ***************************** #

# In this section, we learn how to manipulate files without the use of a text editor, using only the command line.

# ******************** 2.1: Redirecting and Appending ******************** #

# It's possible to create a file containing a line produced by the 'echo' command by using the redirect operator (>) like so:

echo "some line of text" > file_1.txt

# That command will create the file_1.txt file and make "some line of text" the first line of the file. If the file was already created, the redirect operator will write the text to the file, overwriting anything that was already there:

touch already_created_file.txt
echo "some line of text" > already_created_file.txt

# If you want to read the contents of a file on the command line, without opening a text editor, you can use the 'cat' command

cat file_1.txt

# If you want to add a line to a file, without overwriting the contents already contained in the file, you can use the append (>>) operator:

echo "another line of text" >> file_1.txt
echo -e "\ncalling 'cat file_1.txt:'\n" # I want the shell to tell me what's going down so I can read the execution of this script from the command line. The -e option passed to echo ensures that I can use the escape sequence '\n' for a newline to help with the formatting.
cat file_1.txt

# There is a utility for comparing the difference between two files called 'diff'. In order to see it in action, let's first create a file_2.txt that has very similar lines to file_1.txt with just a subtle difference, the last line will say 'another line of words' instead of 'another line of text':

echo "some line of text" > file_2.txt
echo "another line of words" >> file_2.txt

echo -e "\nrunning 'diff file_1.txt file_2.txt'\n"
diff file_1.txt file_2.txt

# Exercises:

# 1. Using echo and >, make files called line_1.txt and line_2.txt and make them contain the first two lines of Sonnet 1, respectively.

echo "From fairest creatures we desire increase," > line_1.txt
echo "That thereby beauty's Rose might never die," > line_2.txt

# 2. Replacate sonnet_1.txt by redirecting the contents of line_1.txt and then appending the contents of line_2.txt to a new file sonnet_1_copy.txt. Confirm using diff that this file is identical to sonnet_1.txt. (Diff should show nothing on the comparision, since there should be no differences).

cat line_1.txt > sonnet_1_copy.txt
cat line_2.txt >> sonnet_1_copy.txt
echo -e "\nCalling 'diff sonnet_1.txt sonnet_1_copy.txt':\n"
diff sonnet_1.txt sonnet_1_copy.txt

# 3. Using 'cat', combine the contents of line_1.txt and line_2.txt in reverse order using a single command, yielding the file sonnet_1_reversed.txt.

cat line_2.txt line_1.txt > sonnet_1_reversed.txt
echo -e "\nsonnet_1.txt contains:\n"
cat sonnet_1.txt
echo -e "\nsonnet_1_reversed.txt contains:\n"
cat sonnet_1_reversed.txt