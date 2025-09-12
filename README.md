# Rethink Zero-Shot Image Anomaly Detection: A New Evaluation Protocol and Extensive Comparison

## Abstract
Zero-shot image anomaly detection (ZSAD) has been a hot topic recently, while existing methods are directly evaluated on one-class benchmarks where anomalies are defined as deviations from normal training images. However, we discover a **fundamental flaw** in the current evaluation protocol: The absence of references in ZSAD actually makes it invalid to discriminate some anomalies/normality in one-class benchmarks (e.g., logical anomalies, anomaly-like texture), which can mislead ZSAD’s evaluation and comparison. As a remedy, this paper makes threefold contributions: First, we rethink and reform ZSAD’s evaluation protocol. Specifically, this is realized by proposing ZSAD-guided Annotation Criteria (ZAC), which provide guidance to re-annotate vague test instances in the context of ZSAD. Guided by ZAC, new benchmarks specially tailored for ZSAD are constructed via cleansing and re-annotating mainstream IAD datasets. Second, with the new evaluation protocol, we systematically re-evaluate state-of-the-art ZSAD methods. Third, based on re-evaluation, we conduct an extensive comparison and provide a thorough analysis of evaluation results. In this way, we not only reveal ZSAD’s status quo fairly and more accurately but also offer valuable insights to future ZSAD research.




<div align="center">
<img width="1400" height="1194" alt="image" src="https://github.com/user-attachments/assets/6beb61db-fd00-4c79-8c1d-a4389c9763b3" />
<div>

<div align="center">
<img width="600" height="267" alt="image" src="https://github.com/user-attachments/assets/af6cb2b9-4007-4263-a9e5-4a2c1caf80dc" />
<div>
  
<div align="center">
<img width="600" height="800" alt="image" src="https://github.com/user-attachments/assets/81b31f9b-3f03-43a6-a265-b23f2b103eb0" />
<div>
  
<div align="center">
<img width="600" height="548" alt="image" src="https://github.com/user-attachments/assets/0f4f4e8c-30ad-4b91-8961-e1e804bb448b" />
<div>
  
<div align="center">
<img width="750" height="348" alt="image" src="https://github.com/user-attachments/assets/845d94f4-d4a3-437f-870b-2a24023335eb" />
<div>

Table 1: The comparison between the reconstructed benchmarks and the original datasets
<img width="1232" height="542" alt="image" src="https://github.com/user-attachments/assets/35a4a2f3-4f81-4224-9cc3-0c4bd0b5172a" />

