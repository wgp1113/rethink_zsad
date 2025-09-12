python test.py --save_path ./results/visa_origin_seed_42 --dataset VisA \
--dataset_path /home/dell/wgp/datasets/VisA \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_origin_seed_42

python test.py --save_path ./results/mvtec_origin_seed_42 --dataset MVTec \
--dataset_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/visa_origin_seed_42

python test.py --save_path ./results/visa_origin_seed_0 --dataset VisA \
--dataset_path /home/dell/wgp/datasets/VisA \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/mvtec_origin_seed_0

python test.py --save_path ./results/mvtec_origin_seed_0 --dataset MVTec \
--dataset_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
--checkpoint_path /home/dell/wgp/AA-CLIP_zsad/checkpoints/visa_origin_seed_0
