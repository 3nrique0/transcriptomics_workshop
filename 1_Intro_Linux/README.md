# Transcriptomics Workshop

Three lessons with bare bones know-hows to get started.
This is not an extensive workshop !!

Each session is planned to last for 2h.

## Lesson 1 Brief linux introduction

Place and date: At CEFE Thursday 7 of november 2019 in Salle Polyvalente from 14h to 16h

Let's start by the end, the *take home message*:

1. Understand the structure to the commands.
2. Move around and inspect directories.
3. Project structure.
4. Create a script and run it.

--------

### Understand the structure to the command:

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

#### Examples with command ls

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

### Basic commands to remember

* **ls** Lists contents of a directory
* **pwd** Prints ('shows') your Working Directory
* **mkdir** Make Directory
* **rmdir** Removes directory. Only removes empty directories
* **cd** Change directory
* **mv** MoVe a file to a location (requires 2 arguments)
* **less** Allows to read text files on the terminal. Use 'q' to quit the program

The edition and creation of files will depend on each person's computer.
I'll give you all a hand with this and complete accordingly this section for future notice


#### Create a data structure for your project

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

--------

### Make your own script to create this 

This means to copy the commands you used to create the folders into one text file.
Save it somewhere and execute it.
It should deploy a project structure.

Congratulations you made your first script!!

-----

### Types of files -- The bit extra for those who want to try

Go to `myotherproject`
Explore, move and run some stuff in there.

Can you tell the difference between the kinds of files in the `myotherproject/scripts` and `myotherproject/data`?

Can you run all the scripts and modify them?

-----




--------

## Next sessions


-- > Thursday 7 of november in Salle Polyvalente from 14h to 16h

## Introduction to bioinformatics: What information is where ? What do you mean by "clean data" ?

--> Friday 15 of november in Salle Polyvalente from 14h to 16h

## Introduction to RNA-seq analyses on R : Package to be announced

--> Thursday 21st of november in Salle de la Bibliothèque
