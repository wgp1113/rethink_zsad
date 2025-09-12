# training
python train.py --save_path ./ckpt/issue --training_mode full_shot

export CUDA_VISIBLE_DEVICES=3

python train.py --save_path ./checkpoints/mvtec_zsad_common_sense_seed_0 --training_mode full_shot \
--seed 0 \
--dataset MVTec --dataset_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense

python train.py --save_path ./checkpoints/mvtec_zsad_extended_seed_0 --training_mode full_shot \
--seed 0 \
--dataset MVTec --dataset_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended

python train.py --save_path ./checkpoints/visa_zsad_common_sense_seed_0 --training_mode full_shot \
--seed 0 \
--dataset VisA --dataset_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense

python train.py --save_path ./checkpoints/visa_zsad_extended_seed_0 --training_mode full_shot \
--seed 0 \
--dataset VisA --dataset_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended

#原始数据集
python train.py --save_path ./checkpoints/mvtec_origin_seed_0 --training_mode full_shot \
--seed 0 \
--dataset MVTec --dataset_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection

python train.py --save_path ./checkpoints/visa_origin_seed_0 --training_mode full_shot \
--seed 0 \
--dataset VisA --dataset_path /home/dell/wgp/datasets/VisA

# testing
declare -a dataset=(MVTec BTAD MPDD Brain Liver Retina Colon_clinicDB Colon_colonDB Colon_Kvasir Colon_cvc300)
save_path="./ckpt/issue"
for i in "${dataset[@]}"; do
    python test.py --save_path $save_path --dataset $i
done

python test.py --save_path ./results/mvtec_zsad_common_sense_seed_0 --dataset MVTec \
--dataset_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense \
--checkpoint_path ./checkpoints/visa_zsad_common_sense_seed_0

python test.py --save_path ./results/visa_zsad_common_sense_seed_0 --dataset VisA \
--dataset_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_zsad_common_sense_seed_0

python test.py --save_path ./results/mvtec_zsad_extended_seed_0 --dataset MVTec \
--dataset_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/visa_zsad_extended_seed_0

python test.py --save_path ./results/visa_zsad_extended_seed_0 --dataset VisA \
--dataset_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_zsad_extended_seed_0


python test.py --save_path ./results/visa_origin --dataset VisA \
--dataset_path /home/dell/wgp/datasets/VisA \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_origin

python test.py --save_path ./results/mvtec_origin --dataset MVTec \
--dataset_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/visa_origin
