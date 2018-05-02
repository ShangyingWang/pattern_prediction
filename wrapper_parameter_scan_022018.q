#!/bin/bash
#
#SBATCH --array=1-1000
#SBATCH -o slurm.out
#SBATCH --mem=8G
#SBATCH -e slurm.err

/opt/apps/matlabR2016a/bin/matlab -nojvm -nodisplay -singleCompThread -r "rank=$SLURM_ARRAY_TASK_ID;wrapper_parameter_scan_022018;quit"
