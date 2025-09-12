# Rethink Zero-Shot Image Anomaly Detection: A New Evaluation Protocol and Extensive Comparison

## Abstract
Zero-shot image anomaly detection (ZSAD) has been a hot topic recently, while existing methods are directly evaluated on one-class benchmarks where anomalies are defined as deviations from normal training images. However, we discover a **fundamental flaw** in the current evaluation protocol: The absence of references in ZSAD actually makes it invalid to discriminate some anomalies/normality in one-class benchmarks (e.g., logical anomalies, anomaly-like texture), which can mislead ZSAD’s evaluation and comparison. As a remedy, this paper makes threefold contributions: First, we rethink and reform ZSAD’s evaluation protocol. Specifically, this is realized by proposing ZSAD-guided Annotation Criteria (ZAC), which provide guidance to re-annotate vague test instances in the context of ZSAD. Guided by ZAC, new benchmarks specially tailored for ZSAD are constructed via cleansing and re-annotating mainstream IAD datasets. Second, with the new evaluation protocol, we systematically re-evaluate state-of-the-art ZSAD methods. Third, based on re-evaluation, we conduct an extensive comparison and provide a thorough analysis of evaluation results. In this way, we not only reveal ZSAD’s status quo fairly and more accurately but also offer valuable insights to future ZSAD research.




<div align="center">
<img width="1400" height="1194" alt="image" src="https://github.com/user-attachments/assets/6beb61db-fd00-4c79-8c1d-a4389c9763b3" />
</div>

## Reconstruction of new benchmarks for ZSAD

<div align="center">
<img width="600" height="267" alt="image" src="https://github.com/user-attachments/assets/af6cb2b9-4007-4263-a9e5-4a2c1caf80dc" />
</div>
  
<div align="center">
<img width="600" height="800" alt="image" src="https://github.com/user-attachments/assets/81b31f9b-3f03-43a6-a265-b23f2b103eb0" />
</div>
  
<div align="center">
<img width="600" height="548" alt="image" src="https://github.com/user-attachments/assets/0f4f4e8c-30ad-4b91-8961-e1e804bb448b" />
</div>
  
<div align="center">
<img width="750" height="348" alt="image" src="https://github.com/user-attachments/assets/845d94f4-d4a3-437f-870b-2a24023335eb" />
</div>

<div align="center">
<img width="700" height="339" alt="image" src="https://github.com/user-attachments/assets/85c4906f-03b8-4b88-8aa9-e8159058ec48" />
</div>

### Dataset download
Due to copyright restrictions, the raw data is not publicly available at this time. If you wish to request access to the dataset, please contact us via email at wangguangpu@nudt.edu.cn. We will provide download instructions within 24 hours of receiving your request. If you do not hear back from us within this timeframe, please feel free to open an issue on our GitHub repository, and we will respond to you as soon as possible.

## Results
<div align="center">
<img width="2200" height="1208" alt="image" src="https://github.com/user-attachments/assets/8ac49785-92cb-41a5-8904-5530d86ad915" />
</div>



