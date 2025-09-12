#--------------------------- Use the pre-trained weights we provide ----------------------- 
export CUDA_VISIBLE_DEVICES=3
# test on the MVTec-AD dataset
for i in {1..15};do
python -u test.py --dataset visa --data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--checkpoint_path ./my_exps/mvtec_zsad_extended/epoch_${i}_group_id_2.pth \
--save_path ./results/visa_zsad_extended_${i} --pretrained_path ./pretrained_weight/ViT-L-14-336px.pt \
--prompt_len 2 --deep_prompt_len 1 --device_id 0 --features_list 6 12 18 24 --pretrained openai --image_size 518 \
--seed 111 --config_path ./models/model_configs/ViT-L-14-336.json --model ViT-L-14-336
done
