#!/bin/bash
#SBATCH --job-name=GoLLIE-13B_CodeLLaMA
#SBATCH --cpus-per-task=16
#SBATCH --gres=gpu:1
#SBATCH --mem=128G
#SBATCH --output=.slurm/GoLLIE-13B_CodeLLaMA.out.txt
#SBATCH --error=.slurm/GoLLIE-13B_CodeLLaMA.err.txt


source /ikerlariak/osainz006/venvs/GoLLIE/bin/activate


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export TOKENIZERS_PARALLELISM=true
export TRANSFORMERS_NO_ADVISORY_WARNINGS=true
export WANDB_ENTITY=hitz-GoLLIE
export WANDB_PROJECT=GoLLIEv1.0

echo CUDA_VISIBLE_DEVICES "${CUDA_VISIBLE_DEVICES}"

CONFIGS_FOLDER="configs/model_configs/eval"


# Call this script from root directory as: sbatch bash_scripts/GoLLIE-13B_CodeLLaMA.sh


python3 -m src.run ${CONFIGS_FOLDER}/GoLLIE-13B_CodeLLaMA.yaml

