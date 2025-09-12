#--------------------------- Use the pre-trained weights we provide ----------------------- 

# test on the MVTec-AD dataset
(
nohup python -u test.py --dataset mvtec --data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense \
--checkpoint_path ./my_exps/visa_zsad_common_sense/epoch_14_group_id_2.pth \
--save_path ./results/mvtec_zsad_common_sense --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336
) > ./log_test_mvtec_zsad_common_sense.out 2>&1 &

(
nohup python -u test.py --dataset mvtec --data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended \
--checkpoint_path ./my_exps/visa_zsad_extended/epoch_14_group_id_2.pth \
--save_path ./results/mvtec_zsad_extended --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336
) > ./log_test_mvtec_zsad_extended.out 2>&1 &


(
nohup python -u test.py --dataset visa --data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--checkpoint_path ./my_exps/mvtec_zsad_common_sense/epoch_14_group_id_2.pth \
--save_path ./results/visa_zsad_common_sense --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336
) > ./log_test_visa_zsad_common_sense.out 2>&1 &

(
nohup python -u test.py --dataset visa --data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--checkpoint_path ./my_exps/mvtec_zsad_extended/epoch_15_group_id_2.pth \
--save_path ./results/visa_zsad_extended --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336
) > ./log_test_visa_zsad_extended.out 2>&1 &













(
nohup python -u train.py --dataset visa --train_data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--val_data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended \
--save_path ./my_exps/visa_zsad_extended --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --learning_rate 0.00002 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--batch_size 16 --epoch 15 --group_id_list 2 --seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336
) > ./log_train_visa_extended.out 2>&1 &
# test on the VisA dataset
(
nohup python -u test.py --dataset visa --data_path ./dataset/mvisa/data \
--checkpoint_path ./vcp_weight/train_mvtec/train_mvtec.pth \
--save_path ./results/test_visa --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 1 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 333 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336
) > ./log_test_visa.out 2>&1 &






#--------------------------- Use your own trained weights ----------------------- #

# test on the MVTec-AD dataset
#(
#nohup python -u test.py --dataset mvtec --data_path ./dataset/mvisa/data \
#--checkpoint_path ./my_exps/train_visa/epoch_10_group_id_2.pth \
#--save_path ./results/test_mvtec --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
#--prompt_len 2 --deep_prompt_len 1 --device_id 1 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
#--seed 333 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336
#) > ./log_test_mvtec.out 2>&1 &

# test on the VisA dataset
#(
#nohup python -u test.py --dataset visa --data_path ./dataset/mvisa/data \
#--checkpoint_path ./my_exps/train_mvtec/epoch_10_group_id_2.pth \
#--save_path ./results/test_visa --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
#--prompt_len 2 --deep_prompt_len 1 --device_id 1 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
#--seed 333 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336
#) > ./log_test_visa.out 2>&1 &