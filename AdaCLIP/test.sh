# pre-trained from MVTec and ColonDB
ckt_path="weights/pretrained_mvtec_colondb.pth"
gpu_id=0

CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig True --testing_data br35h
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig True --testing_data brain_mri
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig True --testing_data btad
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig True --testing_data clinicdb
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig True --testing_data dagm
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig True --testing_data dtd
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig True --testing_data headct
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig True --testing_data isic
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig True --testing_data mpdd
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig True --testing_data sdd
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig True --testing_data tn3k
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig True --testing_data visa

# pre-trained from Visa and Clinicdb
ckt_path="weights/pretrained_visa_clinicdb.pth"
gpu_id=0

CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig True --testing_data colondb
CUDA_VISIBLE_DEVICES=$gpu_id python test.py --testing_model dataset --ckt_path $ckt_path --save_fig True --testing_data mvtec

CUDA_VISIBLE_DEVICES=1
python test.py --testing_model dataset \
--training_data atciad \
--exclude_dataset_name realiad \
--ckt_path    \
--save_fig True \
--testing_data visa

python test.py --testing_model dataset \
--ckt_path   /home/dell/wgp/AdaCLIP/workspaces/origin/models/['mvtec']_4.pth \
--save_fig True --testing_data mvtec \
--save_path ./workspaces/results



python test.py --testing_model dataset \
--ckt_path "/home/dell/wgp/AdaCLIP/workspaces/origin/models/['visa']_4.pth" \
--save_fig True --testing_data visa \
--save_path ./workspaces/results

if [ $? -ne 0 ]; then
    echo "program1 failed. Exiting script."
    exit 1
fi

python test.py --testing_model dataset \
--ckt_path "/home/dell/wgp/AdaCLIP/workspaces/origin/models/['visa']_4.pth" \
--save_fig True --testing_data visa \
--save_path ./workspaces/results

if [ $? -ne 0 ]; then
    echo "program1 failed. Exiting script."
    exit 1
fi

###------------------test using checkpoint without training------------------
export CUDA_VISIBLE_DEVICES=3
python test.py --testing_model dataset \
--ckt_path "/home/dell/wgp/AdaCLIP/workspaces/without_training/without_training_0.pth" \
--save_fig True --testing_data visa \
--save_path ./workspaces/results/visa_without_training

export CUDA_VISIBLE_DEVICES=3
python test.py --testing_model dataset \
--ckt_path "/home/dell/wgp/AdaCLIP/workspaces/without_training/without_training_0.pth" \
--save_fig True --testing_data mvtec \
--save_path ./workspaces/results/mvtec_without_training



