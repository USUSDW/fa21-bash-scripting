# Bash and Shell Scripting Introduction

Scripting with your operating system shell is an incredibly powerful tool. One that can easily be integrated into ones workflow and ones software design and testing. Today's presentation will discuss shell scripting, and we will learn about Bash scripting together.

## Prerequisites
For this presentation, all you need is your computer, a text editor, and *some* familiarity with the Bash shell! 

For those seeking to learn the basics of the Bash shell, please checkout [Erik Falor's Shell Tutor](https://gitlab.cs.usu.edu/erik.falor/shell-tutor), which is a phenomenal resource for learning the basics of the Bash shell.

## What *Is* The Shell?

The shell is a program on your computer that performs select operating system tasks. You tell the shell *what* to do, the shell knows *how* to do it and dispatches the correct processes to do so. The shell is what processes the *commands you communicate to it* and produces the *result* of what you tell it to do. Think of your shell like an interpreter who knows how to communicate what the user asks it to the computer in such a way that the computer understands. The way you communicate with the shell follows a select syntax. Sounds like the shell knows how to understand a programming language, right?

## What Is Shell Scripting?

Shell scripting allows one to automate operating system tasks. Often times one finds themselves writing multiple shell commands in successsion to accomplish a large task. Shell scripting allows one to write these lists of commands to a file that can then be executed by your systems shell. For example, one can ask the shell to `cat` two files together, then take the output of that command, put it into a file, and then compare the differences between that file and another. We can take this process that may be 2 or 3 independent commands and execute this sequence of independent commands with a single command. 

Shell scripting is far more powerful than a simple *list* of commands. As noted above, the shell understands a whole *language*, one that is used in shell scripting. Many may be familiar with some of the simple syntax of the language; such as changing directories, executing external commands, and command output redirection. However, this language is *far* more advanced than may seem initially, and has whole control structures available like many other programming languages to take your shell scripting to the next level.

## Operating System/Shell Discussions
Before continuing on with the presentation, we will need to discuss a couple key things about how your operating system works:

*   Processes
    *   An instance of a computer program being executed
*   Process Forking
    *   When one process *spawns* other processes
    *   When a process forks, select information is *inherited* from the parent process: the one that created it. Information such as the current working directory, and any other `export`ed information.
    *   A parent process is the process that *forked* to create other processes
    *   A child process is the *result* of a parent process forking. It is the new process created by the parent. 
*   System `PATH`
    *   When trying to find the location of a given file or executable, your operating system will look through *all directories listed in the PATH* to attempt to find said file. The PATH is the list of *possible locations for an installed program to be at.* When trying to find a program, the PATH is looked through sequentially.
*   Executable Files
    *   Files that can be *executed* by some specific program on your computer. These files are marked as "executables" and when the shell sees the name of an executable file, it will *execute* the program with the specified program. Think of the `ls` program. You don't have to tell your computer *how* to execute the program, you just write `ls` in your shell, and your OS knows how to execute said file.
    *   To mark a file as executable, one can use the `chmod` program to `ch`ange the `mod`e of a file
        *   `chmod +x fileName` will change the mode of `fileName` to *add* the status that the file is executable
        *   `chmod -x fileName` will change the mode of `fileName` to *remove* the status that the file is executable.
*   Shebangs
    *   The first line of a text file that tells the OS *how* to execute said file.
    *   EX:
        *   `#!/usr/env bash` tells the program the executable must be executed with a bash environment
        *   `#!/usr/env python3` tells the program the executable must be executed with a python3 environment
        *   `#!/path/to/program` tells the program that the executeable must be executed with the program located at `/path/to/program`
    *   Please note that shebangs are not supported by every OS and Shell, however, Bash and it's sister shells (like Zshell) all support shebangs.
*   Program Output
    *   Programs have two output streams.
        *   `STDOUT` - The standard output of a program
        *   `STDERR` - The output stream for error messages
    *   Typically when you execute a program in your shell, both `STDOUT` and `STDERR` print out to the screen. However, with select shell commands, we can control the way these output streams flow and *where* they flow to.
*   Piping
    *   The process of your operating system connecting the *output* of one program and placing it as the *input* to another. 

## The Presentation
And now for Jaxton to show off shell scripting and some of the available features!

