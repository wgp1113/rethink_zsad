python test.py --mode zero_shot --dataset mvtec \
--seed 42 \
--data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense \
--save_path ./results/zero_shot/mvtec_zsad_common_sense_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/visa_zsad_common_sense_seed_42/epoch_15.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset mvtec \
--seed 42 \
--data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended \
--save_path ./results/zero_shot/mvtec_zsad_extended_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/visa_zsad_extended_seed_42/epoch_15.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset visa \
--seed 42 \
--data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--save_path ./results/zero_shot/visa_zsad_common_sense_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense_seed_42/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset visa \
--seed 42 \
--data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--save_path ./results/zero_shot/visa_zsad_extended_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_extended_seed_42/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset mvtec \
--seed 42 \
--data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--save_path ./results/zero_shot/mvtec_origin_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/visa_origin_seed_42/epoch_15.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518


python test.py --mode zero_shot --dataset visa \
--seed 42 \
--data_path /home/dell/wgp/datasets/VisA \
--save_path ./results/zero_shot/visa_origin_seed_42 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_origin_seed_42/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518








python test.py --mode zero_shot --dataset mvtec \
--seed 0 \
--data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense \
--save_path ./results/zero_shot/mvtec_zsad_common_sense_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/visa_zsad_common_sense_seed_0/epoch_15.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset mvtec \
--seed 0 \
--data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended \
--save_path ./results/zero_shot/mvtec_zsad_extended_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/visa_zsad_extended_seed_0/epoch_15.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset visa \
--seed 0 \
--data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--save_path ./results/zero_shot/visa_zsad_common_sense_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense_seed_0/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset visa \
--seed 0 \
--data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--save_path ./results/zero_shot/visa_zsad_extended_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_zsad_extended_seed_0/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset mvtec \
--seed 0 \
--data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--save_path ./results/zero_shot/mvtec_origin_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/visa_origin_seed_0/epoch_15.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518


python test.py --mode zero_shot --dataset visa \
--seed 0 \
--data_path /home/dell/wgp/datasets/VisA \
--save_path ./results/zero_shot/visa_origin_seed_0 \
--config_path ./open_clip/model_configs/ViT-L-14-336.json \
--checkpoint_path ./checkpoints/mvtec_origin_seed_0/epoch_3.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518







#python test.py --mode zero_shot --dataset mvtec \
#--data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense \
#--save_path ./results/zero_shot/mvtec_zsad_common_sense_seed_0 \
#--config_path ./open_clip/model_configs/ViT-L-14-336.json \
#--checkpoint_path ./checkpoints/visa_zsad_common_sense_seed_0/epoch_15.pth \
#--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

#python test.py --mode zero_shot --dataset mvtec \
#--data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended \
#--save_path ./results/zero_shot/mvtec_zsad_extended_seed_0 \
#--config_path ./open_clip/model_configs/ViT-L-14-336.json \
#--checkpoint_path ./checkpoints/visa_zsad_extended_seed_0/epoch_15.pth \
#--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

#python test.py --mode zero_shot --dataset visa \
#--data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
#--save_path ./results/zero_shot/visa_zsad_common_sense_seed_0 \
#--config_path ./open_clip/model_configs/ViT-L-14-336.json \
#--checkpoint_path ./checkpoints/mvtec_zsad_common_sense_seed_0/epoch_3.pth \
#--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518
#
#python test.py --mode zero_shot --dataset visa \
#--data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
#--save_path ./results/zero_shot/visa_zsad_extended_seed_0 \
#--config_path ./open_clip/model_configs/ViT-L-14-336.json \
#--checkpoint_path ./checkpoints/mvtec_zsad_extended_seed_0/epoch_3.pth \
#--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

#python test.py --mode zero_shot --dataset mvtec \
#--data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
#--save_path ./results/zero_shot/mvtec_origin_seed_0 \
#--config_path ./open_clip/model_configs/ViT-L-14-336.json \
#--checkpoint_path ./checkpoints/visa_origin_seed_0/epoch_15.pth \
#--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518


#python test.py --mode zero_shot --dataset visa \
#--data_path /home/dell/wgp/datasets/VisA \
#--save_path ./results/zero_shot/visa_origin_seed_0 \
#--config_path ./open_clip/model_configs/ViT-L-14-336.json \
#--checkpoint_path ./checkpoints/mvtec_origin_seed_0/epoch_3.pth \
#--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518
