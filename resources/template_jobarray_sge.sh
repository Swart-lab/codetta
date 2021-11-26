#!/bin/bash

# Array jobs use the additional parameter $SGE_TASK_ID
#
# Input files are split beforehand and numbered sequentially
#
# When submitting, use `qsub -t 1-10` for example to submit a range of task
# IDs, in this case 1 to 10.

## SGE environment variables #####################

## Usually unchanged -----------------------------

# Use bash to interpret the script
#$ -S /bin/bash
# Run script from current working directory
#$ -cwd
# Join stdout and stderr streams
#$ -j y
# Export environment variables to context of job
#$ -V

## Resource requests ------------------------------

# Request 4G of memory per slot 
#$ -l h_vmem=4G
# Request 8.5 h run time
#$ -l h_rt=8:30:0
# Request 1 slots 
#$ -pe parallel 1

###################################################

echo "******************************"
echo "Job started: $JOB_ID"
date
hostname
echo "******************************"
# job command will be inserted after this line
