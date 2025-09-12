### test on the VisA dataset
python test.py --mode zero_shot --dataset visa \
--data_path ./data/visa --save_path ./results/visa/zero_shot \
--config_path ./open_clip/model_configs/ViT-L-14-336.json --checkpoint_path ./exps/pretrained/mvtec_pretrained.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

python test.py --mode zero_shot --dataset visa \
--data_path ./data/visa --save_path ./results/visa/zero_shot \
--config_path ./open_clip/model_configs/ViT-L-14-336.json --checkpoint_path ./exps/pretrained/mvtec_pretrained.pth \
--model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518

### test on the MVTec AD dataset
for i in {1..15};do
  python test.py --mode zero_shot --dataset mvtec \
  --data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense \
  --save_path ./results/zero_shot/mvtec_zsad_common_sense_${i} \
  --config_path ./open_clip/model_configs/ViT-L-14-336.json \
  --checkpoint_path ./checkpoints/visa_zsad_common_sense/epoch_${i}.pth \
  --model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518
done

for i in {1..15};do
  python test.py --mode zero_shot --dataset mvtec \
  --data_path /home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_extended \
  --save_path ./results/zero_shot/mvtec_zsad_extended_${i} \
  --config_path ./open_clip/model_configs/ViT-L-14-336.json \
  --checkpoint_path ./checkpoints/visa_zsad_extended/epoch_${i}.pth \
  --model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518
done

for i in {1..15};do
  python test.py --mode zero_shot --dataset visa \
  --data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense \
  --save_path ./results/zero_shot/visa_zsad_common_sense_${i} \
  --config_path ./open_clip/model_configs/ViT-L-14-336.json \
  --checkpoint_path ./checkpoints/mvtec_zsad_common_sense/epoch_${i}.pth \
  --model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518
done

for i in {1..15};do
  python test.py --mode zero_shot --dataset visa \
  --data_path /home/dell/wgp/datasets/zsad_datasets/VisA_zsad_extended \
  --save_path ./results/zero_shot/visa_zsad_extended_${i} \
  --config_path ./open_clip/model_configs/ViT-L-14-336.json \
  --checkpoint_path ./checkpoints/mvtec_zsad_extended/epoch_${i}.pth \
  --model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518
done

for i in {1..15};do
  python test.py --mode zero_shot --dataset mvtec \
  --data_path /home/dell/wgp/datasets/mvtec_ad/mvtec_anomaly_detection \
  --save_path ./results/zero_shot/mvtec_origin_${i} \
  --config_path ./open_clip/model_configs/ViT-L-14-336.json \
  --checkpoint_path ./checkpoints/visa_origin/epoch_${i}.pth \
  --model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518
done

for i in {1..15};do
  python test.py --mode zero_shot --dataset visa \
  --data_path /home/dell/wgp/datasets/VisA \
  --save_path ./results/zero_shot/visa_origin_${i} \
  --config_path ./open_clip/model_configs/ViT-L-14-336.json \
  --checkpoint_path ./checkpoints/mvtec_origin/epoch_${i}.pth \
  --model ViT-L-14-336 --features_list 6 12 18 24 --pretrained openai --image_size 518
done


