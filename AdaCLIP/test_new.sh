#python test.py --testing_model dataset \
#--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_zsad_extended/origin/models/['mvtec']_5.pth" \
#--save_fig True \
#--save_path ./workspaces/results/test_visa_origin_train_mvtec_zsad_extended \
#--testing_data visa
#
#python test.py --testing_model dataset \
#--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_zsad_common_sense/origin/models/['mvtec']_5.pth" \
#--save_fig True \
#--save_path ./workspaces/results/test_visa_origin_train_mvtec_zsad_common_sense \
#--testing_data visa
#
#
#python test.py --testing_model dataset \
#--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_origin/origin/models/['mvtec']_5.pth" \
#--save_fig True \
#--save_path ./workspaces/results/test_visa_zsad_common_sense_train_mvtec_origin \
#--testing_data visa

#python test.py --testing_model dataset \
#--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_zsad_extended/origin/models/['mvtec']_5.pth" \
#--save_fig True \
#--save_path ./workspaces/results/test_visa_zsad_common_sense_train_mvtec_zsad_extended \
#--testing_data visa




python test.py --testing_model dataset \
--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_origin/origin/models/['mvtec']_5.pth" \
--save_fig True \
--save_path ./workspaces/results/test_visa_zsad_extended_train_mvtec_origin \
--testing_data visa

python test.py --testing_model dataset \
--ckt_path "/mnt/data1/wgp/AdaCLIP_zsad/checkpoints/mvtec_zsad_extended/origin/models/['mvtec']_5.pth" \
--save_fig True \
--save_path ./workspaces/results/test_visa_zsad_extended_train_mvtec_zsad_common_sense \
--testing_data visa




