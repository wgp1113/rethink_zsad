import os
from .base_dataset import BaseDataset
from config import DATA_ROOT

'''dataset source: https://paperswithcode.com/dataset/mvtecad'''

ATCIAD_CLS_NAMES = ['abrasion', 'bend', 'break', 'bubble', 'burn', 'burr',
                    'contamination', 'corrosion', 'crack', 'cut', 'deformation', 'foreign body',
                    'hole', 'pit', 'poke', 'scratch', 'stain', 'wrinkle']
ATCIAD_ROOT = os.path.join(DATA_ROOT, 'ATC-IAD2.4')

class ATCiadDataset(BaseDataset):
    def __init__(self, transform, target_transform, clsnames=ATCIAD_CLS_NAMES, aug_rate=0.2, root=ATCIAD_ROOT, training=True, dataset_name='', exclude_dataset_name=''):
        super(ATCiadDataset, self).__init__(
            clsnames=clsnames, transform=transform, target_transform=target_transform,
            root=root, aug_rate=aug_rate, training=training, dataset_name=dataset_name, exclude_dataset_name=exclude_dataset_name
        )
