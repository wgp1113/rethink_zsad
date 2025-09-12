python train.py --dataset mvtec \
--train_data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense \
--epoch 15 --seed 0 --save_path ./checkpoints/mvtec_zsad_common_sense_seed_0

python train.py --dataset visa \
--train_data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--epoch 15 --seed 0 --save_path ./checkpoints/visa_zsad_common_sense_seed_0

python train.py --dataset mvtec \
--train_data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended \
--epoch 15 --seed 0 --save_path ./checkpoints/mvtec_zsad_extended_seed_0

python train.py --dataset visa \
--train_data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--epoch 15 --seed 0 --save_path ./checkpoints/visa_zsad_extended_seed_0

python train.py --dataset mvtec \
--train_data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--epoch 15 --seed 0 --save_path ./checkpoints/mvtec_origin_seed_0

python train.py --dataset visa \
--train_data_path /home/dell/wgp/datasets/VisA \
--epoch 15 --seed 0 --save_path ./checkpoints/visa_origin_seed_0




