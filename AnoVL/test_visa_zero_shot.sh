### test on the VisA dataset

python vis_test.py --mode zero_shot --dataset visa \
--data_path  /home/dell/wgp/datasets/VisA \
--save_path ./results/visa_origin_seed_0/zero_shot_clip \
--config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--model ViT-B-16-plus-240 --features_list 3 6 9 12 --pretrained laion400m_e32 \
--image_size 240 --seed 0 --adapter True --epoch 5

python vis_test.py --mode zero_shot --dataset visa \
--data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--save_path ./results/visa_zsad_common_sense_seed_0/zero_shot_clip \
--config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--model ViT-B-16-plus-240 --features_list 3 6 9 12 --pretrained laion400m_e32 \
--image_size 240 --seed 0 --adapter True --epoch 5

python vis_test.py --mode zero_shot --dataset visa \
--data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--save_path ./results/visa_zsad_extended_seed_0/zero_shot_clip \
--config_path ./open_clip/model_configs/ViT-B-16-plus-240.json \
--model ViT-B-16-plus-240 --features_list 3 6 9 12 --pretrained laion400m_e32 \
--image_size 240 --seed 0 --adapter True --epoch 5



--mode zero_shot --dataset visa --data_path  /home/dell/wgp/datasets/VisA --save_path ./results/11111111/zero_shot_clip --config_path ./open_clip/model_configs/ViT-B-16-plus-240.json --model ViT-B-16-plus-240 --features_list 3 6 9 12 --pretrained laion400m_e32 --image_size 240 --seed 0 --adapter True --epoch 5
