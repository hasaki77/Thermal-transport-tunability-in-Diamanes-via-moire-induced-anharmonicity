#!/bin/bash

#SBATCH --job-name=nep-gpu
#SBATCH --partition=gpu
#SBATCH --nodes=1
#SBATCH --mem-per-cpu=16G
#SBATCH --exclude=gn23,gn12
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --gpus=1
#SBATCH --time=144:00:00

ulimit -c unlimited
ulimit -s unlimited

#COMMAND PART
srun gpumd
