gpu_id=0

# Note: Since we have utilized half-precision (FP16) for training, the training process can occasionally be unstable.
# It is recommended to run the training process multiple times and choose the best model based on performance
# on the validation set as the final model.

# pre-trained on MVtec and colondb
CUDA_VISIBLE_DEVICES=$gpu_id python train.py --save_fig True --training_data mvtec colondb --testing_data visa

# pre-trained on Visa and Clinicdb
CUDA_VISIBLE_DEVICES=$gpu_id python train.py --save_fig True --training_data visa clinicdb --testing_data mvtec

# This model is pre-trained on all available data to create a powerful Zero-Shot Anomaly Detection (ZSAD) model for demonstration purposes.


###---------------------------train on atciad-------------------------
export CUDA_VISIBLE_DEVICES='2'
python train.py --save_fig True \
--training_data atciad --epoch 10 \
--save_path ./workspaces/atciad2.4_mvtec \
--exclude_dataset_name mvtec \
--testing_data mvtec

export CUDA_VISIBLE_DEVICES='3'
python train.py --save_fig True \
--training_data atciad --epoch 10 \
--save_path ./workspaces/atciad2.4_visa \
--exclude_dataset_name visa \
--testing_data visa

export CUDA_VISIBLE_DEVICES=0
python train.py --save_fig True \
--training_data atciad --epoch 10 \
--save_path ./workspaces/atciad2.4_realiad \
--exclude_dataset_name realiad \
--testing_data realiad

###---------------------------train on mvtec/visa in atciad-------------------------
export CUDA_VISIBLE_DEVICES='0'
python train.py --save_fig True \
--training_data visa --epoch 10 \
--save_path ./workspaces/visa \
--testing_data mvtec

export CUDA_VISIBLE_DEVICES='1'
python train.py --save_fig True \
--training_data mvtec --epoch 10 \
--save_path ./workspaces/mvtec \
--testing_data visa


###---------------------------save checkpoint without training-------------------------
export CUDA_VISIBLE_DEVICES=3
python train.py --save_fig True \
--training_data mvtec --epoch 0 \
--save_path ./workspaces/without_training \
--testing_data visa

#
#export CUDA_VISIBLE_DEVICES='1'
#python train.py --save_fig True \
#--training_data mvtec \
#--save_path ./workspaces/mvtec_without_good \
#--testing_data visa

export CUDA_VISIBLE_DEVICES=3
python train.py --save_fig True \
--training_data mvtec --epoch 5 --seed 0 \
--save_path ./checkpoints/mvtec_zsad_common_sense_seed_0 \
--testing_data visa

export CUDA_VISIBLE_DEVICES=0
python train.py --save_fig True \
--training_data visa --epoch 5 --seed 0 \
--save_path ./checkpoints/visa_zsad_common_sense_seed_0 \
--testing_data mvtec

export CUDA_VISIBLE_DEVICES='3'
python train.py --save_fig True \
--training_data mvtec --epoch 5 --seed 0 \
--save_path ./checkpoints/mvtec_zsad_extended_seed_0 \
--testing_data visa

export CUDA_VISIBLE_DEVICES=0
python train.py --save_fig True \
--training_data visa --epoch 5 --seed 0 \
--save_path ./checkpoints/visa_zsad_extended_seed_0 \
--testing_data mvtec


python train.py --save_fig True \
--training_data mvtec --epoch 5 --seed 42 \
--save_path ./checkpoints/mvtec_origin_seed_42 \
--testing_data visa

python train.py --save_fig True \
--training_data visa --epoch 5 --seed 42 \
--save_path ./checkpoints/visa_origin_seed_42 \
--testing_data mvtec

