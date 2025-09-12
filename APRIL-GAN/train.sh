### train on the MVTec AD dataset
python train.py --dataset mvtec \
--train_data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense \
--save_path ./checkpoints/mvtec_zsad_common_sense_seed_111 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json --model ViT-L-14-336 \
--features_list 6 12 18 24 --pretrained openai --image_size 518  \
--batch_size 16 --aug_rate 0.2 --print_freq 1 \
--epoch 3 --save_freq 1 --seed 111

python train.py --dataset mvtec \
--train_data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended \
--save_path ./checkpoints/mvtec_zsad_extended_seed_111 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json --model ViT-L-14-336 \
--features_list 6 12 18 24 --pretrained openai --image_size 518  \
--batch_size 16 --aug_rate 0.2 --print_freq 1 \
--epoch 3 --save_freq 1 --seed 111

python train.py --dataset visa \
--train_data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--save_path ./checkpoints/visa_zsad_common_sense_seed_111 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json --model ViT-L-14-336 \
--features_list 6 12 18 24 --pretrained openai --image_size 518  \
--batch_size 16 --aug_rate 0.2 --print_freq 1 \
--epoch 15 --save_freq 1 --seed 111

python train.py --dataset visa \
--train_data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--save_path ./checkpoints/visa_zsad_extended_seed_111 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json --model ViT-L-14-336 \
--features_list 6 12 18 24 --pretrained openai --image_size 518  \
--batch_size 16 --aug_rate 0.2 --print_freq 1 \
--epoch 15 --save_freq 1 --seed 111


# 原始数据集
python train.py --dataset mvtec \
--train_data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--save_path ./checkpoints/mvtec_origin_seed_111 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json --model ViT-L-14-336 \
--features_list 6 12 18 24 --pretrained openai --image_size 518  \
--batch_size 16 --aug_rate 0.2 --print_freq 1 \
--epoch 3 --save_freq 1 --seed 111

python train.py --dataset visa --train_data_path /home/dell/wgp/datasets/VisA \
--save_path ./checkpoints/visa_origin_seed_111 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json --model ViT-L-14-336 \
--features_list 6 12 18 24 --pretrained openai --image_size 518  \
--batch_size 8 --aug_rate 0.2 --print_freq 1 \
--epoch 15 --save_freq 1 --seed 111


