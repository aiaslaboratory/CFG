#!/bin/bash
#SBATCH --job-name=singularity_gpu_job
#SBATCH --error=error_%j.txt
#SBATCH --output=output_%j.txt
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=24G
#SBATCH --time=20-00
#SBATCH --gres=gpu:1

python setup.py


#python evaluate.py --arch=DGCNN --datadir=Results/PointNetPP_msg_npoint1024/Mat
#python attack.py --arch=PointNet
#PointNetPP_ssg
# e.g.
# srun singularity exec --nv /usr/local/containers/pytorch.sif python train.py
# srun --gres=gpu --mem=64G --pty singularity exec --nv 3dpoint.sif python all_type_attack.py --model "ccdgn" --model_path "./log/checkpoint"

##srun --pty singularity exec --nv 3dpoint.sif python all_type_attack.py --model=pointnet --model_path=log/pointnet/model.ckpt --type=sd --constraint=c

#srun --pty singularity exec --nv 3dpoint.sif python train.py --model=zs2

#--type=sd --constraint=c