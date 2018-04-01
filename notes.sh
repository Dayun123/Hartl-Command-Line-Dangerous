#!/bin/bash

# Notes from Hartl's "Learn Enough Command Line to be Dangerous" tutorial

# ************************** 1.1: Running a Terminal **********************#

# In order to work with the command line, we will need to open a terminal. I'm using Linux Mint, so in order to open a terminal on my machine I need to use the following keyboard shorcut:

# ctrl-alt-T

# The anatomy of a command line: (I'm using zsh with Oh-My-ZSH, so this is different than a bash terminal)

# prompt  dir_name                  command -option argument
# ➜       learn-enough-command-line rm      -f      foo.txt

# Exercices

# 1. Identify the prompt, command, options and arguments in the lines below.

# [~]$ cd ruby
# [~]$ = prompt, cd = command, ruby = argument

# [ruby]$ ls -a
# [ruby]$ = prompt, ls = command, -a = argument

# [ruby]$ rm -f .DS_Store
# [ruby]$ = prompt, rm = command, -f = option, .DS_Store = argument

# [ruby]$ ls -a
# [ruby]$ = prompt, ls = command, -a = option

# [ruby]$ cd projects/
# [ruby]$ = prompt, cd = command, projects/ = argument

# [projects]$ pwd
# [projects]$ = prompt, pwd = command

# [projects]$
# [projects]$ = prompt

# 2. Figure out the keyboard shortcut for creating a new tab in the terminal.

# ctrl-shift-T

# *************************** 1.2: Our First Command ********************** #

# The command 'echo' simply prints its argument to standard out, which is usually just the terminal screen.

echo hello
# => hello

# We can also wrap the argument to echo in single or double quotes, as long as they match up.

echo "hello"
# => hello
echo 'hello'
# => hello

# If you're quotes don't match, you will get stuck. Either type in the matching quote or hit ctrl-C  (^C) to cancel the command.

# echo 'hello
# hangs until you close the quote or hit ^C

# Exercises:

# 1. Write a command that prints out the string "hello, world". Do it in three different ways.

echo hello
echo 'hello'
echo "hello"

# 2. Type the command [echo 'hello] with the mismatched single quote and get yourself out of trouble.

# echo 'hello # commented out so the shell script will run all the way through!

# *********************** 1.3: Man Pages ******************************** #

# The shell comes with it's own program of manual pages known as 'man'. To learn about a shell command, type [man (command)]

man echo

# Exercsies:

# 1. According to 'man', what are the official short and long options for 'echo' on my system?

# Three short options, -n, -e, and -E, and two long, --help and --version.
#   -n omits trailing newlines
#   -e enables interpretation of backslash escape sequences
#   -E disables interpretation of backkslash escape sequences, and is the default

# 2. Print "Hello" to the screen with 'echo' but omit the trailing newline.

echo -n 'hello'

# ************************* 1.4: Editing a Line ************************** #

# There are several ways to edit a line on the command line.

# Using the up arrow, you can scroll between previous commands
# You can also use ctrl-P (^P) to scroll up through previous commands

# To move around on the line itself, you can use the following key shortcuts:

# ^A, move to beginning of line
# ^E, move to end of line

# To delete a line, ^U is the key command

# If you want to edit some text inside of a larger line on the command line, some systems allow you to press the 'option' key and click on the spot in the line you want to edit. I'm using a lenovo running Linux Mint, and there is no 'option' key so this doesn't work for me.







