#!/bin/bash

#SBATCH --partition=mono
#SBATCH --ntasks=1
#SBATCH --time=4-0:00
#SBATCH --mem-per-cpu=8000
#SBATCH -J Deep-RBM_MLP_7_bot_bin_PERS_base
#SBATCH -e Deep-RBM_MLP_7_bot_bin_PERS_base.err.txt
#SBATCH -o Deep-RBM_MLP_7_bot_bin_PERS_base.out.txt

source /etc/profile.modules

module load gcc
module load matlab
cd ~/deepLearn && srun ./deepFunction 7 'RBM' 'MLP' '128   500  1500  1000  2000   250    10' '0  1  1  1  1  1  1' '7_bot_bin' 'PERS_base' "'iteration.n_epochs', 'learning.lrate', 'learning.cd_k', 'learning.persistent_cd', 'parallel_tempering.use'" '200 1e-3 1 1 0' "'iteration.n_epochs'" '200 0'