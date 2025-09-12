import torch.utils.data as data
import json
import random
from PIL import Image
import numpy as np
import torch
import os


class VisaDataset(data.Dataset):
	def __init__(self, root, transform, target_transform, mode='test', k_shot=0, save_dir=None, obj_name=None):
		self.root = root
		self.transform = transform
		self.target_transform = target_transform

		self.data_all = []
		meta_info = json.load(open(f'{self.root}/meta.json', 'r'))
		name = self.root.split('/')[-1]
		meta_info = meta_info[mode]

		if mode == 'train':
			self.cls_names = [obj_name]
			save_dir = os.path.join(save_dir, 'k_shot.txt')
		else:
			self.cls_names = list(meta_info.keys())
		for cls_name in self.cls_names:
			if mode == 'train':
				data_tmp = meta_info[cls_name]
				indices = torch.randint(0, len(data_tmp), (k_shot,))
				for i in range(len(indices)):
					self.data_all.append(data_tmp[indices[i]])
					with open(save_dir, "a") as f:
						f.write(data_tmp[indices[i]]['img_path'] + '\n')
			else:
				self.data_all.extend(meta_info[cls_name])
		self.length = len(self.data_all)

	def __len__(self):
		return self.length

	def get_cls_names(self):
		return self.cls_names

	def __getitem__(self, index):
		data = self.data_all[index]
		img_path, mask_path, cls_name, specie_name, anomaly = data['img_path'], data['mask_path'], data['cls_name'], \
															  data['specie_name'], data['anomaly']
		img = Image.open(os.path.join(self.root, img_path))
		if anomaly == 0:
			img_mask = Image.fromarray(np.zeros((img.size[0], img.size[1])), mode='L')
		else:
			img_mask = np.array(Image.open(os.path.join(self.root, mask_path)).convert('L')) > 0
			img_mask = Image.fromarray(img_mask.astype(np.uint8) * 255, mode='L')
		img = self.transform(img) if self.transform is not None else img
		img_mask = self.target_transform(
			img_mask) if self.target_transform is not None and img_mask is not None else img_mask
		img_mask = [] if img_mask is None else img_mask

		return {'img': img, 'img_mask': img_mask, 'cls_name': cls_name, 'anomaly': anomaly,
				'img_path': os.path.join(self.root, img_path)}


class MVTecDataset(data.Dataset):
	def __init__(self, root, transform, target_transform, aug_rate, mode='test', k_shot=0, save_dir=None, obj_name=None):
		self.root = root
		self.transform = transform
		self.target_transform = target_transform
		self.aug_rate = aug_rate

		self.data_all = []
		meta_info = json.load(open(f'{self.root}/meta.json', 'r'))
		name = self.root.split('/')[-1]
		meta_info = meta_info[mode]

		if mode == 'train':
			self.cls_names = [obj_name]
			save_dir = os.path.join(save_dir, 'k_shot.txt')
		else:
			self.cls_names = list(meta_info.keys())
		for cls_name in self.cls_names:
			if mode == 'train':
				data_tmp = meta_info[cls_name]
				indices = torch.randint(0, len(data_tmp), (k_shot,))
				for i in range(len(indices)):
					self.data_all.append(data_tmp[indices[i]])
					with open(save_dir, "a") as f:
						f.write(data_tmp[indices[i]]['img_path'] + '\n')
			else:
				self.data_all.extend(meta_info[cls_name])
		self.length = len(self.data_all)

	def __len__(self):
		return self.length

	def get_cls_names(self):
		return self.cls_names

	def combine_img(self, cls_name):
		img_paths = os.path.join(self.root, cls_name, 'test')
		img_ls = []
		mask_ls = []
		for i in range(4):
			defect = os.listdir(img_paths)
			random_defect = random.choice(defect)
			files = os.listdir(os.path.join(img_paths, random_defect))
			random_file = random.choice(files)
			img_path = os.path.join(img_paths, random_defect, random_file)
			mask_path = os.path.join(self.root, cls_name, 'ground_truth', random_defect, random_file[:3] + '_mask.png')
			img = Image.open(img_path)
			img_ls.append(img)
			if random_defect == 'good':
				img_mask = Image.fromarray(np.zeros((img.size[0], img.size[1])), mode='L')
			else:
				img_mask = np.array(Image.open(mask_path).convert('L')) > 0
				img_mask = Image.fromarray(img_mask.astype(np.uint8) * 255, mode='L')
			mask_ls.append(img_mask)
		# image
		image_width, image_height = img_ls[0].size
		result_image = Image.new("RGB", (2 * image_width, 2 * image_height))
		for i, img in enumerate(img_ls):
			row = i // 2
			col = i % 2
			x = col * image_width
			y = row * image_height
			result_image.paste(img, (x, y))

		# mask
		result_mask = Image.new("L", (2 * image_width, 2 * image_height))
		for i, img in enumerate(mask_ls):
			row = i // 2
			col = i % 2
			x = col * image_width
			y = row * image_height
			result_mask.paste(img, (x, y))

		return result_image, result_mask

	def __getitem__(self, index):
		data = self.data_all[index]
		img_path, mask_path, cls_name, specie_name, anomaly = data['img_path'], data['mask_path'], data['cls_name'], \
															  data['specie_name'], data['anomaly']
		random_number = random.random()
		if random_number < self.aug_rate:
			img, img_mask = self.combine_img(cls_name)
		else:
			img = Image.open(os.path.join(self.root, img_path))
			if anomaly == 0:
				img_mask = Image.fromarray(np.zeros((img.size[0], img.size[1])), mode='L')
			else:
				img_mask = np.array(Image.open(os.path.join(self.root, mask_path)).convert('L')) > 0
				img_mask = Image.fromarray(img_mask.astype(np.uint8) * 255, mode='L')
		# transforms
		img = self.transform(img) if self.transform is not None else img
		img_mask = self.target_transform(
			img_mask) if self.target_transform is not None and img_mask is not None else img_mask
		img_mask = [] if img_mask is None else img_mask
		return {'img': img, 'img_mask': img_mask, 'cls_name': cls_name, 'anomaly': anomaly,
				'img_path': os.path.join(self.root, img_path)}




class OtherDataset(data.Dataset):
	def __init__(self, root, transform, target_transform, mode='test', k_shot=0, save_dir=None, obj_name=None):
		self.root = root
		self.transform = transform
		self.target_transform = target_transform

		self.data_all = []
		meta_info = json.load(open(f'{self.root}/meta.json', 'r'))
		name = self.root.split('/')[-1]
		meta_info = meta_info[mode]

		if mode == 'train':
			self.cls_names = [obj_name]
			save_dir = os.path.join(save_dir, 'k_shot.txt')
		else:
			self.cls_names = list(meta_info.keys())
		for cls_name in self.cls_names:
			if mode == 'train':
				data_tmp = meta_info[cls_name]
				indices = torch.randint(0, len(data_tmp), (k_shot,))
				for i in range(len(indices)):
					self.data_all.append(data_tmp[indices[i]])
					with open(save_dir, "a") as f:
						f.write(data_tmp[indices[i]]['img_path'] + '\n')
			else:
				self.data_all.extend(meta_info[cls_name])
		self.length = len(self.data_all)

	def __len__(self):
		return self.length

	def get_cls_names(self):
		return self.cls_names

	def __getitem__(self, index):
		data = self.data_all[index]
		img_path, mask_path, cls_name, specie_name, anomaly = data['img_path'], data['mask_path'], data['cls_name'], \
															  data['specie_name'], data['anomaly']
		img = Image.open(os.path.join(self.root, img_path))
		if anomaly == 0:
			img_mask = Image.fromarray(np.zeros((img.size[0], img.size[1])), mode='L')
		else:
			if mask_path != "":
				img_mask = np.array(Image.open(os.path.join(self.root, mask_path)).convert('L')) > 0
				img_mask = Image.fromarray(img_mask.astype(np.uint8) * 255, mode='L')
			else:
				img_mask = Image.fromarray(np.zeros((img.size[0], img.size[1])), mode='L')
		img = self.transform(img) if self.transform is not None else img
		img_mask = self.target_transform(
			img_mask) if self.target_transform is not None and img_mask is not None else img_mask
		img_mask = [] if img_mask is None else img_mask

		return {'img': img, 'img_mask': img_mask, 'cls_name': cls_name, 'anomaly': anomaly,
				'img_path': os.path.join(self.root, img_path)}
#
# class OtherDataset(data.Dataset):
# 	def __init__(self, root, transform, target_transform, mode='test', train_mode='zero', aug=True, product_list=None,
# 				 dataset=None):
# 		self.root = root
# 		self.transform = transform
# 		self.target_transform = target_transform
# 		self.aug = aug
# 		self.mode = mode
# 		self.train_mode = train_mode
#
# 		self.data_all = []
# 		meta_info = json.load(open(f'{self.root}/meta.json', 'r'))
# 		meta_info = meta_info["test"]
#
# 		if train_mode == "zero" and product_list is not None:
# 			keys = meta_info.keys()
# 			keys = list(keys)
# 			for product in product_list:
# 				assert product in keys
# 			for key in keys:
# 				if key not in product_list:
# 					del meta_info[key]
#
# 		self.img_trans = A.Compose([
# 			A.Rotate(limit=30, p=0.5),
# 			A.RandomRotate90(p=0.5),
# 			A.RandomBrightnessContrast(p=0.5),
# 			A.GaussNoise(p=0.5),
# 			A.OneOf([
# 				A.Blur(blur_limit=3, p=0.5),
# 				A.ColorJitter(p=0.5),
# 				A.GaussianBlur(p=0.5),
# 			], p=0.5)
# 		], is_check_shapes=False)
#
# 		self.cls_names = list(meta_info.keys())
#
# 		for index, cls_name in enumerate(self.cls_names):
# 			self.data_all.extend(meta_info[cls_name])
#
# 		# self.data_all = self.data_all[:200]
# 		self.length = len(self.data_all)
#
# 	def Trans(self, img, img_mask):
# 		img_mask = np.array(img_mask)
# 		img = np.array(img)[:, :, ::-1]
# 		augmentations = self.img_trans(mask=img_mask, image=img)
# 		img = augmentations["image"][:, :, ::-1]
# 		img_mask = augmentations["mask"]
# 		img = Image.fromarray(img.astype(np.uint8))
# 		img_mask = Image.fromarray(img_mask.astype(np.uint8), mode='L')
# 		return img, img_mask
#
# 	def __len__(self):
# 		return self.length
#
# 	def get_cls_names(self):
# 		return self.cls_names
#
# 	def __getitem__(self, index):
# 		data = self.data_all[index]
# 		img_path, mask_path, cls_name, specie_name, anomaly = data['img_path'], data['mask_path'], data['cls_name'], \
# 			data['specie_name'], data['anomaly']
# 		img = Image.open(os.path.join(self.root, img_path))
# 		if anomaly == 0:
# 			img_mask = Image.fromarray(np.zeros((img.size[1], img.size[0])), mode='L')
# 		else:
# 			if mask_path != "":
# 				img_mask = np.array(Image.open(os.path.join(self.root, mask_path)).convert('L')) > 0
# 				img_mask = Image.fromarray(img_mask.astype(np.uint8) * 255, mode='L')
# 			else:
# 				img_mask = Image.fromarray(np.zeros((img.size[1], img.size[0])), mode='L')
#
# 		if self.mode == "train" and self.aug == True:
# 			img_mask = np.array(img_mask)
# 			img = np.array(img)
# 			augmentations = self.img_trans(mask=img_mask, image=img)
# 			img = augmentations["image"]
# 			img_mask = augmentations["mask"]
# 			img = Image.fromarray(img)
# 			img_mask = Image.fromarray(img_mask.astype(np.uint8), mode='L')
#
# 		# img, img_mask = self.Trans(img, img_mask)
#
# 		img = self.transform(img) if self.transform is not None else img
# 		img_mask = self.target_transform(
# 			img_mask) if self.target_transform is not None and img_mask is not None else img_mask
# 		img_mask = [] if img_mask is None else img_mask
#
# 		return {'img': img, 'img_mask': img_mask, 'cls_name': cls_name, 'anomaly': anomaly,
# 				'img_path': os.path.join(self.root, img_path)}
