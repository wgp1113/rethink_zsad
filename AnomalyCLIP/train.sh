
device=1

LOG=${save_dir}"res.log"
echo ${LOG}
depth=(9)
n_ctx=(12)
t_n_ctx=(4)
for i in "${!depth[@]}";do
    for j in "${!n_ctx[@]}";do
    ## train on the VisA dataset
        base_dir=${depth[i]}_${n_ctx[j]}_${t_n_ctx[0]}_multiscale
        save_dir=./checkpoints/${base_dir}/
        CUDA_VISIBLE_DEVICES=${device} python train.py --dataset visa --train_data_path /remote-home/iot_zhouqihang/data/Visa \
        --save_path ${save_dir} \
        --features_list 24 --image_size 518  --batch_size 8 --print_freq 1 \
        --epoch 15 --save_freq 1 --depth ${depth[i]} --n_ctx ${n_ctx[j]} --t_n_ctx ${t_n_ctx[0]}
    wait
    done
done


LOG=${save_dir}"res.log"
echo ${LOG}
depth=(9)
n_ctx=(12)
t_n_ctx=(4)
for i in "${!depth[@]}";do
    for j in "${!n_ctx[@]}";do
    ## train on the VisA dataset
        base_dir=${depth[i]}_${n_ctx[j]}_${t_n_ctx[0]}_multiscale_visa
        save_dir=./checkpoints/${base_dir}/
        CUDA_VISIBLE_DEVICES=${device} python train.py --dataset mvtec --train_data_path /remote-home/iot_zhouqihang/data/mvdataset \
        --save_path ${save_dir} \
        --features_list 24 --image_size 518  --batch_size 8 --print_freq 1 \
        --epoch 15 --save_freq 1 --depth ${depth[i]} --n_ctx ${n_ctx[j]} --t_n_ctx ${t_n_ctx[0]}
    wait
    done
done

export CUDA_VISIBLE_DEVICES=0
python train.py --dataset mvtec \
--train_data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense \
--save_path ./checkpoints/mvtec_zsad_common_sense_seed_111 --features_list 24 --image_size 518  \
--batch_size 8 --print_freq 1 --epoch 15 --save_freq 1 --seed 111 \
--depth 9 --n_ctx 12 --t_n_ctx 4

export CUDA_VISIBLE_DEVICES=1
python train.py --dataset mvtec \
--train_data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended \
--save_path ./checkpoints/mvtec_zsad_extended_seed_111 --features_list 24 --image_size 518  \
--batch_size 8 --print_freq 1 --epoch 15 --save_freq 1 --seed 111 \
--depth 9 --n_ctx 12 --t_n_ctx 4

export CUDA_VISIBLE_DEVICES=2
python train.py --dataset visa \
--train_data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--save_path ./checkpoints/visa_zsad_common_sense_seed_111 --features_list 24 --image_size 518  \
--batch_size 8 --print_freq 1 --epoch 15 --save_freq 1 --seed 111 \
--depth 9 --n_ctx 12 --t_n_ctx 4

export CUDA_VISIBLE_DEVICES=3
python train.py --dataset visa \
--train_data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--save_path ./checkpoints/visa_zsad_extended_seed_111 --features_list 24 --image_size 518  \
--batch_size 8 --print_freq 1 --epoch 15 --save_freq 1 --seed 111 \
--depth 9 --n_ctx 12 --t_n_ctx 4



python train.py --dataset mvtec \
--train_data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--save_path ./checkpoints/mvtec_origin_seed_0 --features_list 24 --image_size 518  \
--batch_size 8 --print_freq 1 --epoch 15 --save_freq 1 --seed 0 \
--depth 9 --n_ctx 12 --t_n_ctx 4


python train.py --dataset visa \
--train_data_path /home/dell/wgp/datasets/VisA \
--save_path ./checkpoints/visa_origin_seed_0 --features_list 24 --image_size 518  \
--batch_size 8 --print_freq 1 --epoch 15 --save_freq 1 --seed 0 \
--depth 9 --n_ctx 12 --t_n_ctx 4