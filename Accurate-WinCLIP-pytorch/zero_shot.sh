#!/bin/bash

few_shots=(0)

for few_num in "${!few_shots[@]}";do
## train on the VisA dataset
    base_dir=winclip_mvtec
    save_dir=./exps_${base_dir}/mvtecvit_large_14_518/

    CUDA_VISIBLE_DEVICES=1 python reproduce_WinCLIP.py --dataset mvtec \
    --data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection --save_path ./results/mvtec_${base_dir}/few_shot_${few_shots[few_num]} \
    --model ViT-B-16-plus-240 --pretrained openai --k_shot ${few_shots[few_num]} --image_size 240 
    wait
done


for few_num in "${!few_shots[@]}";do
## train on the VisA dataset
    base_dir=winclip_visa
    save_dir=./exps_${base_dir}/mvtecvit_large_14_518/


    CUDA_VISIBLE_DEVICES=1 python reproduce_WinCLIP.py --dataset visa \
    --data_path /home/dell/wgp/datasets/VisA --save_path ./results/mvtec_${base_dir}/few_shot_${few_shots[few_num]} \
    --model ViT-B-16-plus-240 --pretrained openai --k_shot ${few_shots[few_num]} --image_size 240 
    wait
done



#python reproduce_WinCLIP.py --dataset realiad \
#--data_path /home/dell/wgp2/datasets/Real-IAD/realiad_1024 \
#--save_path ./results/winclip_realiad/few-shot-0 \
#--model ViT-B-16-plus-240 --pretrained openai \
#--k_shot 0 --image_size 240

export CUDA_VISIBLE_DEVICES=0


python reproduce_WinCLIP_back.py --dataset mpdd \
--data_path /home/dell/wgp/datasets/mpdd \
--save_path ./results/winclip_mpdd/few-shot-0 \
--model ViT-B-16-plus-240 --pretrained openai \
--k_shot 0 --image_size 240


python reproduce_WinCLIP_back.py --dataset btad \
--data_path /home/dell/wgp/datasets/btad \
--save_path ./results/winclip_btad/few-shot-0 \
--model ViT-B-16-plus-240 --pretrained openai \
--k_shot 0 --image_size 240


python reproduce_WinCLIP_back.py --dataset visa \
--data_path /home/dell/wgp/datasets/VisA \
--save_path ./results/winclip_visa/few-shot-0 \
--model ViT-B-16-plus-240 --pretrained openai \
--k_shot 0 --image_size 240

export CUDA_VISIBLE_DEVICES=0
python reproduce_WinCLIP_back.py --dataset mvtec \
--data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection_select \
--save_path ./results/winclip_mvtec_selected/few-shot-0 \
--model ViT-B-16-plus-240 --pretrained openai \
--save_image True \
--k_shot 0 --image_size 240

export CUDA_VISIBLE_DEVICES=1
python reproduce_WinCLIP_back.py --dataset mvtec \
--data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense \
--save_path ./results/winclip_mvtec_zsad_common_sense/few-shot-0 \
--model ViT-B-16-plus-240 --pretrained openai \
--save_image True \
--k_shot 0 --image_size 240

python reproduce_WinCLIP_back.py --dataset mvtec \
--data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended \
--save_path ./results/winclip_mvtec_zsad_extended/few-shot-0 \
--model ViT-B-16-plus-240 --pretrained openai \
--save_image True \
--k_shot 0 --image_size 240

python reproduce_WinCLIP_back.py --dataset visa \
--data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--save_path ./results/winclip_visa_zsad_common_sense/few-shot-0 \
--model ViT-B-16-plus-240 --pretrained openai \
--save_image True \
--k_shot 0 --image_size 240

python reproduce_WinCLIP_back.py --dataset visa \
--data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--save_path ./results/winclip_visa_zsad_extended/few-shot-0 \
--model ViT-B-16-plus-240 --pretrained openai \
--save_image True \
--k_shot 0 --image_size 240


export CUDA_VISIBLE_DEVICES=0
python reproduce_WinCLIP_back.py --dataset mvtec --data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection_select --save_path ./results/winclip_mvtec_selected/few-shot-0 --model ViT-B-16-plus-240 --pretrained openai --save_image True --k_shot 0 --image_size 240

export CUDA_VISIBLE_DEVICES=2
python reproduce_WinCLIP_back.py --dataset visa \
--data_path /home/dell/wgp/datasets/VisA_select \
--save_path ./results/winclip_visa_selected/few-shot-0 \
--model ViT-B-16-plus-240 --pretrained openai \
--save_image True \
--k_shot 0 --image_size 240

export CUDA_VISIBLE_DEVICES=0,1
python reproduce_WinCLIP_back.py --dataset visa \
--data_path /home/dell/wgp/datasets/VisA \
--save_path ./results/winclip_visa_origin/few-shot-0 \
--model ViT-B-16-plus-240 --pretrained openai \
--save_image True \
--k_shot 0 --image_size 240



python reproduce_WinCLIP_back.py --dataset realiad \
--data_path /home/dell/wgp2/datasets/Real-IAD/realiad_1024 \
--save_path ./results/winclip_realiad/few-shot-0 \
--model ViT-B-16-plus-240 --pretrained openai \
--k_shot 0 --image_size 240


