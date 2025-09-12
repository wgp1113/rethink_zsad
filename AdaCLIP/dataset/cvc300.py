import os
from .base_dataset import BaseDataset
from config import DATA_ROOT

'''dataset source: https://paperswithcode.com/dataset/cvc-clinicdb'''
CVC300_CLS_NAMES = [
    'colon',
]
CVC300_ROOT = "/home/dell/wgp/datasets/medical_datasets/segmentation/CVC-300"

class CVC300Dataset(BaseDataset):
    def __init__(self, transform, target_transform, clsnames=CVC300_CLS_NAMES, aug_rate=0.0, root=CVC300_ROOT, training=True):
        super(CVC300Dataset, self).__init__(
            clsnames=clsnames, transform=transform, target_transform=target_transform,
            root=root, aug_rate=aug_rate, training=training
        )
