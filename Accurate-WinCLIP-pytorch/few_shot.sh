#!/bin/bash

few_shots=(1 2 4)

for few_num in "${!few_shots[@]}";do
## train on the VisA dataset
    base_dir=winclip_mvtec
    save_dir=./exps_${base_dir}/mvtecvit_large_14_518/

    CUDA_VISIBLE_DEVICES=0 python reproduce_WinCLIP.py --dataset mvtec \
    --data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection --save_path ./results/mvtec_${base_dir}/few_shot_${few_shots[few_num]} \
    --model ViT-B-16-plus-240 --pretrained openai --k_shot ${few_shots[few_num]} --image_size 240 
    wait
done


for few_num in "${!few_shots[@]}";do
## train on the VisA dataset
    base_dir=winclip_visa
    save_dir=./exps_${base_dir}/mvtecvit_large_14_518/


    CUDA_VISIBLE_DEVICES=0 python reproduce_WinCLIP.py --dataset visa \
    --data_path /home/dell/wgp/datasets/VisA --save_path ./results/mvtec_${base_dir}/few_shot_${few_shots[few_num]} \
    --model ViT-B-16-plus-240 --pretrained openai --k_shot ${few_shots[few_num]} --image_size 240 
    wait
done
