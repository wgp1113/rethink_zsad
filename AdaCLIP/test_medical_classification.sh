python test.py --testing_model dataset \
--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_origin/origin/models/['mvtec']_5.pth" \
--save_fig True \
--save_path ./workspaces/results/test_br35h_train_mvtec_origin \
--testing_data br35h

python test.py --testing_model dataset \
--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_zsad_common_sense/origin/models/['mvtec']_5.pth" \
--save_fig True \
--save_path ./workspaces/results/test_br35h_train_mvtec_zsad_common_sense \
--testing_data br35h

python test.py --testing_model dataset \
--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_zsad_extended/origin/models/['mvtec']_5.pth" \
--save_fig True \
--save_path ./workspaces/results/test_br35h_train_mvtec_zsad_extended \
--testing_data br35h

#python test.py --testing_model dataset --ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_origin/origin/models/['mvtec']_5.pth" --save_fig True --save_path ./workspaces/results/test_br35h_train_mvtec_origin --testing_data br35h


python test.py --testing_model dataset \
--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_origin/origin/models/['mvtec']_5.pth" \
--save_fig True \
--save_path ./workspaces/results/test_brainmri_train_mvtec_origin \
--testing_data brainmri

python test.py --testing_model dataset \
--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_zsad_common_sense/origin/models/['mvtec']_5.pth" \
--save_fig True \
--save_path ./workspaces/results/test_brainmri_train_mvtec_zsad_common_sense \
--testing_data brainmri

python test.py --testing_model dataset \
--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_zsad_extended/origin/models/['mvtec']_5.pth" \
--save_fig True \
--save_path ./workspaces/results/test_brainmri_train_mvtec_zsad_extended \
--testing_data brainmri




python test.py --testing_model dataset \
--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_origin/origin/models/['mvtec']_5.pth" \
--save_fig True \
--save_path ./workspaces/results/test_headct_train_mvtec_origin \
--testing_data headct

python test.py --testing_model dataset \
--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_zsad_common_sense/origin/models/['mvtec']_5.pth" \
--save_fig True \
--save_path ./workspaces/results/test_headct_train_mvtec_zsad_common_sense \
--testing_data headct

python test.py --testing_model dataset \
--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_zsad_extended/origin/models/['mvtec']_5.pth" \
--save_fig True \
--save_path ./workspaces/results/test_headct_train_mvtec_zsad_extended \
--testing_data headct