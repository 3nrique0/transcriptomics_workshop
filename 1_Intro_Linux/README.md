# Lesson 1 Brief linux introduction

Place and date: At CEFE Thursday 7 of november 2019 in Salle Polyvalente from 14h to 16h

Let's start by the end, the *take home message*:

1. Get started in the command line.
2. Move around and inspect directories.
3. Project structure.
4. Create a script and run it.

--------

## 1. Get started in the command line

### Understand the structure to the command

Some commands can work on it's own.
This usually means that the arguments and parameters have default values
```
command
```

It can use extra (short) parameters.
They use a single dash and are composed of 1 letter
```
command -l -p -t
```

It can use long parameters, sometimes a parameter has a long or a short version.
They use double dash and hare composed of 2 or more letters
```
command --parameter --dothething
```

It may require extra information for some parameters
```
command --parameter1 123 --parameter2=abc
```

An argument is that extra bit which is not a parameter

```
command -p -q -r1 -parameter 123 argument_1 argument_2
```

### Examples with command ls

`ls` command stands for *list* the contents of a directory.
The default directory is the one where you are, the *working directory*.
```
ls
```

It can use short parameters.
```
command -l -h -t -a
```

It can use long parameters, sometimes a parameter has a long or a short version.
Notice that long parametters have more than one letter and require a double dash
```
ls -l --human-readable -t --all
```

It may require extra information for some parameters.
See the difference in the output ?
```
ls --quoting-styl=clocale
ls --quoting-style=c
ls --quoting-style=shell
```

An argument is that extra bit which is not a parameter

```
ls /home/$USER/Documents
```

-----------

## 2. Move around and inspect directories

### Basic commands to remember

* **ls** Lists contents of a directory.
* **pwd** Prints ('shows') your Working Directory.
* **mkdir** Make Directory.
* **rmdir** Removes directory. Only removes empty directories.
* **cd** Change directory.
* **mv** MoVe a file to a location (requires 2 arguments).
* **less** Allows to read text files on the terminal. Use 'q' to quit the program.

### Explore a directory

There is already a project directory.
You can explore it.
There are more instructions in the **README.txt** files of each directory.
Find them and follow their instructions.


## 3. Project structure

The structure here shown is part of what we call **good practices**.
This makes your project easy to understand by everybody, specially yourself in some months.
When working in bioinformatics each project has it's own data, results, plots and steps.
It will also help you to re-use your scripts.

Most projects use scripts which is a written text file containing the command lines used for that project

### Create a structure for your project

Use the commands from above to create a project structure like this one:

```
myproject/
    data/
       README.txt
       ...
    steps/
       README.txt
       ...
    results/
       README.txt
       ...
    plots/
       README.txt
       ...
    scripts/
       README.txt
       ...
    docs/
       1-installing-dependencies.txt
       2-running-some-analysis.txt
       3-running-some-other-analysis.txt
       ...
    NOTEBOOK.txt
    README.txt
```

You can use the command `touch` to create the *README.txt* files.
Beware of the path !

--------

## Make your own script to create this 

After trial and error you managed to create that structure.
So it is time we created a script to be able to do the same thing again.

This means to copy the commands you used to create the folders into one text file.
To do this you can use the `history` command.
Save it somewhere and execute it.
It should deploy a project structure.

Congratulations you made your first script!!

--> During the workshop we will create the script together AND we will compact the code to make it easier to read.




-----

## Types of files -- The bit extra for those who want to try

Go to `myotherproject`
Explore, move and run some stuff in there.

Can you tell the difference between the kinds of files in the `myotherproject/scripts` and `myotherproject/data`?

Can you run all the scripts and modify them?

-----







-- > Thursday 7 of november in Salle Polyvalente from 14h to 16h

## Introduction to bioinformatics: What information is where ? What do you mean by "clean data" ?

--> Friday 15 of november in Salle Polyvalente from 14h to 16h

## Introduction to RNA-seq analyses on R : Package to be announced

--> Thursday 21st of november in Salle de la Bibliothèque
