
device=0

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
        CUDA_VISIBLE_DEVICES=${device} python test.py --dataset mvtec \
        --data_path /remote-home/iot_zhouqihang/data/mvdataset --save_path ./results/${base_dir}/zero_shot \
        --checkpoint_path ${save_dir}epoch_15.pth \
         --features_list 24 --image_size 518 --depth ${depth[i]} --n_ctx ${n_ctx[j]} --t_n_ctx ${t_n_ctx[0]}
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
        CUDA_VISIBLE_DEVICES=${device} python test.py --dataset visa \
        --data_path /remote-home/iot_zhouqihang/data/Visa --save_path ./results/${base_dir}/zero_shot \
        --checkpoint_path ${save_dir}epoch_15.pth \
        --features_list 24 --image_size 518 --depth ${depth[i]} --n_ctx ${n_ctx[j]} --t_n_ctx ${t_n_ctx[0]}
    wait
    done
done



export CUDA_VISIBLE_DEVICES=0



python test.py --dataset visa \
--data_path  /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
--save_path ./results/visa_zsad_common_sense/9_12_4_multiscale/zero_shot \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4

export CUDA_VISIBLE_DEVICES=1
python test.py --dataset visa \
--data_path  /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
--save_path ./results/visa_zsad_extended/9_12_4_multiscale/zero_shot \
--checkpoint_path ./checkpoints/mvtec_zsad_extended/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4

export CUDA_VISIBLE_DEVICES=2
python test.py --dataset mvtec \
--data_path  /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense \
--save_path ./results/mvtec_zsad_common_sense/9_12_4_multiscale/zero_shot \
--checkpoint_path ./checkpoints/visa_zsad_common_sense/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4

export CUDA_VISIBLE_DEVICES=3
python test.py --dataset mvtec \
--data_path  /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended \
--save_path ./results/mvtec_zsad_extended/9_12_4_multiscale/zero_shot \
--checkpoint_path ./checkpoints/visa_zsad_extended/epoch_15.pth \
--features_list 6 12 18 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4