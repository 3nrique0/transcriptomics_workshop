#!/bin/bash

# Some tools require a python environment to work / be installed

py_env_dir=~/envs/ngs_workshop

mkdir -p $py_env_dir

readlink $(command -v python3)
virtualenv -p $(readlink $(command -v python3)) $py_env_dir

## Install softwares in that environtment
## CODE NOT WORKING

source ${py_env_dir}bin/activate

pip install --user multiqc

deactivate
