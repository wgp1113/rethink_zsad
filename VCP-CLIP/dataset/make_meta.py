import os
import json
import random
import random
import numpy as np

class metaSolver(object):

    def __init__(self, root, meta_path, datasets):
        self.root = root
        self.meta_path = meta_path
        self.datasets = datasets
        if datasets == "visa":
            self.CLSNAMES =  [
            'candle', 'capsules', 'cashew', 'chewinggum', 'fryum',
            'macaroni1', 'macaroni2', 'pcb1', 'pcb2', 'pcb3',
            'pipe_fryum',
            ]
        else:
            self.CLSNAMES = [
            'bottle', 'cable', 'capsule', 'carpet', 'grid',
            'hazelnut', 'leather', 'screw',
            'tile', 'toothbrush', 'transistor', 'wood', 'zipper',
            ]
    
    def run(self):
        info = dict(train={}, test={})
        for cls_name in self.CLSNAMES:
            cls_dir = f'{self.root}/{cls_name}'
            for phase in ['test']:
                cls_info = []
                species = sorted(os.listdir(f'{cls_dir}/{phase}'))

                for specie in species:  #['anomaly', 'good']  
                    #cls_info = []
                    is_abnormal = True if specie not in ['good'] else False
                    img_names = os.listdir(f'{cls_dir}/{phase}/{specie}')
                    is_null = True if len(img_names) ==0 else False
                    #mask_names = os.listdir(f'{cls_dir}/ground_truth/{specie}') if is_abnormal else None

                    
                    #mask_names.sort() if mask_names is not None else None
                    if is_null and phase != "test":
                        info_img = dict(
                            img_path=f'',
                            mask_path=f'',
                            cls_name=cls_name,
                            specie_name=specie,
                            dataset_name =self.datasets,
                            anomaly=1 if is_abnormal else 0,
                            )
                        cls_info.append(info_img)
                    else:
                        img_names = sorted(img_names)
                        for idx, img_name in enumerate(img_names):
                            info_img = dict(
                                img_path=f'{cls_name}/{phase}/{specie}/{img_name}',
                                mask_path=f'{cls_name}/ground_truth/{specie}/{img_name.replace(".bmp",".png")}' if is_abnormal else '',
                                cls_name=cls_name,
                                specie_name=specie,
                                # dataset_name = img_name.split("_")[0],
                                dataset_name=self.datasets,
                                anomaly=1 if is_abnormal else 0,
                                )
                            cls_info.append(info_img)

                    info[phase][cls_name] = cls_info
        with open(self.meta_path, 'w') as f:
            f.write(json.dumps(info, indent=4) + "\n")

if __name__ == '__main__':
    
    runner = metaSolver(root="/home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense", meta_path="/home/dell/wgp/datasets/zsad_datasets/mvtec_zsad_common_sense/meta_mvtec.json", datasets= "mvtec")  #new_anomaly_set
    runner.run()

    # runner = metaSolver(root="/home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense", meta_path="/home/dell/wgp/datasets/zsad_datasets/VisA_zsad_common_sense/meta_visa.json", datasets= "visa")  #new_anomaly_set
    # runner.run()
