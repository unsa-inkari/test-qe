#!/bin/bash
#SBATCH --job-name          test-qe
#SBATCH --time              720:00:00
#SBATCH --nodes             1
#SBATCH --ntasks-per-node   18
#SBATCH --mem               1536MB # 1.5GB
#SBATCH --error             output-%j.error
#SBATCH --output            output-%j.output

# Eliminamos los modulos cargados
module purge

# Cargando los modulos necesarios
module load qe/6.7

mpirun pw.x -input input.in > output.result
