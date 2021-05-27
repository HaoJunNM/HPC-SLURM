#!/bin/bash
#SBATCH --account=youraccount
#SBATCH --time=09:00:00 #estiamtion running time of your program
#SBATCH --job-name=yourjobname #your job name
#SBATCH --output=%x.%j.out #%x is the job name, %j is job number which will be assigned when job is submitted
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mail-user=youremail %this is optional in case you need notification of the progress
#SBATCH --mail-type=BEGIN,END,FAIL %when to notice you, optional

cd /scratch/userid/env #usually the data and code to use the data should be in this kind of directory
module purge #in case there is any pre-load modules
module load conda #choose your module name, module avail can check the available modules in your system
source activate env #my python virtual environment is in /scratch/userid/env and the name is env if you do not need virtual env, delete this line

python mycode.py
