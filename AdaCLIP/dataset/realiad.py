import os
from .base_dataset import BaseDataset
from config import DATA_ROOT2

'''dataset source: https://paperswithcode.com/dataset/mvtecad'''

REALIAD_CLS_NAMES = ["audiojack", "bottle_cap", "button_battery", "end_cap", "eraser",
            "fire_hood", "mint", "mounts", "pcb", "phone_battery",
            "plastic_nut", "plastic_plug", "porcelain_doll", "regulator", "rolled_strip_base",
            "sim_card_set", "switch", "tape", "terminalblock", "toothbrush",
            "toy_brick", "toy", "transistor1", "u_block", "usb_adaptor",
            "usb", "vcpill", "wooden_beads", "woodstick", "zipper"]

REALIAD_ROOT = os.path.join(DATA_ROOT2, 'Real-IAD', 'realiad_1024')

class RealIADDataset(BaseDataset):
    def __init__(self, transform, target_transform, clsnames=REALIAD_CLS_NAMES, aug_rate=0.2, root=REALIAD_ROOT, training=True):
        super(RealIADDataset, self).__init__(
            clsnames=clsnames, transform=transform, target_transform=target_transform,
            root=root, aug_rate=aug_rate, training=training
        )
