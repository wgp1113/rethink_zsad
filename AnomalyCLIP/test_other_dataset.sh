export CUDA_VISIBLE_DEVICES=1

for i in {15};do
  python test.py --dataset mvtec \
  --data_path  /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense \
  --save_path ./results/mvtec_zsad_common_sense_seed_42/9_12_4_multiscale/zero_shot_${i} \
  --checkpoint_path ./checkpoints/visa_zsad_common_sense_seed_42/epoch_${i}.pth \
  --features_list 24 --image_size 518 \
  --depth 9 --n_ctx 12 --t_n_ctx 4
done

python test.py --dataset wfdd \
--data_path  /mnt/data1/wgp/datasets/WFDD \
--save_path ./results/wfdd_mvtec_zsad_common_sense_seed_111/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_zsad_common_sense_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4


python test.py --dataset wfdd \
--data_path  /mnt/data1/wgp/datasets/WFDD \
--save_path ./results/wfdd_mvtec_zsad_extended_seed_111/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_zsad_extended_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4

python test.py --dataset wfdd \
--data_path  /mnt/data1/wgp/datasets/WFDD \
--save_path ./results/wfdd_mvtec_origin_seed_111/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_origin_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4


python test.py --dataset visa \
--data_path  /home/dell/wgp/datasets/VisA \
--save_path ./results/visa_mvtec_origin_seed_111/9_12_4_multiscale/zero_shot_15 \
--checkpoint_path ./checkpoints/mvtec_origin_seed_111/epoch_15.pth \
--features_list 24 --image_size 518 \
--depth 9 --n_ctx 12 --t_n_ctx 4


