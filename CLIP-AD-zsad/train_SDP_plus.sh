### Train on visa, validate on mvtec.
export CUDA_VISIBLE_DEVICES=0
python train.py --save_path ./checkpoints/SDP_plus/train_on_mvtec_zsad_common_sense_seed_111 \
--train_dataset mvtec --train_dataset_dir /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense \
--test_dataset visa --test_dataset_dir /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--img_size 240 --batch_size 8 --features_list 3 6 9 12 --rep_vec dbscan \
--print_freq 1 --save_freq 1 --epochs 5 --learning_rate 0.0001 --seed 111

export CUDA_VISIBLE_DEVICES=1
python train.py --save_path ./checkpoints/SDP_plus/train_on_mvtec_zsad_extended_seed_0 \
--train_dataset mvtec --train_dataset_dir /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended \
--test_dataset visa --test_dataset_dir /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--img_size 240 --batch_size 8 --features_list 3 6 9 12 --rep_vec dbscan \
--print_freq 1 --save_freq 1 --epochs 5 --learning_rate 0.0001 --seed 0

export CUDA_VISIBLE_DEVICES=2
python train.py --save_path ./checkpoints/SDP_plus/train_on_visa_zsad_common_sense_seed_0 \
--train_dataset visa --train_dataset_dir /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--test_dataset mvtec --test_dataset_dir /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--img_size 240 --batch_size 8 --features_list 3 6 9 12 --rep_vec dbscan \
--print_freq 1 --save_freq 1 --epochs 5 --learning_rate 0.0001 --seed 0

export CUDA_VISIBLE_DEVICES=3
python train.py --save_path ./checkpoints/SDP_plus/train_on_visa_zsad_extended_seed_0 \
--train_dataset visa --train_dataset_dir /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--test_dataset mvtec --test_dataset_dir /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--img_size 240 --batch_size 8 --features_list 3 6 9 12 --rep_vec dbscan \
--print_freq 1 --save_freq 1 --epochs 5 --learning_rate 0.0001 --seed 0

export CUDA_VISIBLE_DEVICES=0
python train.py --save_path ./checkpoints/SDP_plus/train_on_mvtec_origin_seed_42 \
--train_dataset mvtec --train_dataset_dir /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--test_dataset visa --test_dataset_dir /home/dell/wgp/datasets/VisA \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--img_size 240 --batch_size 8 --features_list 3 6 9 12 --rep_vec dbscan \
--print_freq 1 --save_freq 1 --epochs 5 --learning_rate 0.0001 --seed 42

export CUDA_VISIBLE_DEVICES=1
python train.py --save_path ./checkpoints/SDP_plus/train_on_visa_origin_seed_42 \
--train_dataset visa --train_dataset_dir /home/dell/wgp/datasets/VisA \
--test_dataset mvtec --test_dataset_dir /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--img_size 240 --batch_size 8 --features_list 3 6 9 12 --rep_vec dbscan \
--print_freq 1 --save_freq 1 --epochs 5 --learning_rate 0.0001 --seed 42


### Train on mvtec, validate on visa.
CUDA_VISIBLE_DEVICES=0 python3 train.py --save_path ./results/SDP_plus/train/train_on_mvtec \
--train_dataset mvtec --train_dataset_dir ./data/mvtec \
--test_dataset visa --test_dataset_dir ./data/visa \
--model ViT-B-16-plus-240 --pretrained laion400m_e31 --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--img_size 240 --batch_size 8 --features_list 3 6 9 12 --rep_vec dbscan --smoothing 2 \
--print_freq 1 --save_freq 1 --epochs 5 --learning_rate 0.0001
