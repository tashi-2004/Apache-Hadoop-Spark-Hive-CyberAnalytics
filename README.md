# Hadoop-Hive-PySpark-CyberAnalytics

This repository demonstrates a comprehensive big data analytics pipeline tailored for cyber threat analysis using Apache Hadoop, Apache Hive, and PySpark. It leverages the UNSW-NB15 dataset to provide deep insights into cybersecurity threats.

## Prerequisites

Ensure you have the following installed on your system:
- Apache Hadoop (3.3.6)
- Apache Hive (4.0.1)
- PySpark
- Python 3.x
- Jupyter Notebook 

## Installation

Follow these steps to set up your environment:

1. **Clone the Repository**
   Clone the repository and navigate to the project directory using the following commands:
   ```bash
   git clone https://github.com/tashi-2004/Hadoop-Spark-Hive-CyberAnalytics.git
   cd Hadoop-Hive-PySpark-CyberAnalytics

## Understanding Dataset: UNSW-NB15

The UNSW-NB15 dataset was created by the IXIA PerfectStorm tool in the Cyber Range Lab of the Australian Centre for Cyber Security (ACCS). It generates a mix of real modern activities and synthetic contemporary attack behaviors. The dataset contains raw network traffic captured using the **tcpdump** tool (100 GB in size). 

### Key Features of the Dataset:
- It includes **nine types of attacks**: Fuzzers, Analysis, Backdoors, DoS, Exploits, Generic, Reconnaissance, Shellcode, and Worms.
- Tools such as **Argus** and **Bro-IDS** were used, along with twelve algorithms, to generate **49 features**, including a class label.
- A total of **10 million records** are available in the dataset (CSV format), with a total size of approximately **600MB**.
- [Download Features](https://www.dropbox.com/s/c8qrzd99z5s9ub6/UNSW-NB15_features.csv?dl=1)
- [Download Dataset](https://www.dropbox.com/s/4xqg32ih9xoh5jq/UNSW-NB15.csv?dl=1)

### Steps for Analysis:
1. **Explore the dataset** by importing it into Hadoop HDFS.
2. **Use Hive** to query and print the first 5-10 records for better understanding.
3. Proceed with big data analytics using PySpark and Hive for advanced modeling and visualization.

## Start Hadoop Services
Navigate to the Hadoop directory and start all necessary services using the `start-all.sh` script:
```bash
start-all.sh
```
### Load Data to HDFS
Put the UNSW-NB15 dataset into HDFS to make it accessible for analysis. Use the following command to load the data:
```bash
hadoop fs -put home/to/UNSW-NB15.csv /user/in/hdfs
```
<img width="1000" alt="Image" src="https://github.com/user-attachments/assets/11aa979f-c519-48c4-b149-9a6b34156a38" />

## Execute Hive Queries
After the data is loaded into HDFS, proceed to execute Hive queries to analyze the dataset:
```bash
hive -f hivequeries.hql
```
 **Hive Query 1**
![Hive Query 1](https://github.com/user-attachments/assets/27b02d3b-1b71-40f7-81f1-c9b0182f0782)

 **Hive Query 2**
![Hive Query 2](https://github.com/user-attachments/assets/4ce23090-2a1c-4bf1-bb32-6cdd4aff4731)

 **Hive Query 3**
![Hive Query 3](https://github.com/user-attachments/assets/af2b4729-b600-4252-bddc-bd5a13e82065)

 **Hive Query 4**
![Hive Query 4](https://github.com/user-attachments/assets/f130b621-8abc-44c2-8de4-7bda60216d48)

 **Hive Query 5**
![Hive Query 5](https://github.com/user-attachments/assets/449c55b6-53eb-4e47-9399-37ffc6fb5e10)


## PySpark Analysis
Following the Hive query execution, use PySpark to perform further data analysis. Run the PySpark notebook to carry out this step:
```bash
pyspark pyspark.ipynb
```
## Key Steps in the Analysis

### 1. Data Loading and Preprocessing
The UNSW-NB15 dataset is loaded and preprocessed to prepare for analysis. Below is the preview of the dataset:
<img width="1000" alt="Image" src="https://github.com/user-attachments/assets/b7b511bc-0859-4fa1-9236-cb94b2770117" />

### 2. Descriptive Statistics
Summary statistics of the dataset, showing count, mean, standard deviation, and range for all features:
<img width="1000" alt="Image" src="https://github.com/user-attachments/assets/89cce777-60fe-433a-bd72-af276d5eb228" />

### 3. Correlation Analysis
A correlation matrix was generated to identify relationships between numerical features:
<img width="1000" alt="Image" src="https://github.com/user-attachments/assets/e6246bc7-a502-4bc3-8aec-34d4566aa604"  />

### 4. Kernel Density Estimation
A kernel density plot was created to analyze the distribution of the `duration` feature:
<img width="1000" alt="Image" src="https://github.com/user-attachments/assets/55e11584-11aa-4351-94d8-2fd391d1f3c8"  />

### 5. Principal Component Analysis (PCA)
PCA was applied to reduce dimensionality. The first two principal components explain most of the data variability:
<img width="1000" alt="Image" src="https://github.com/user-attachments/assets/df4a8a0b-bf57-4fdd-97a7-06268426a1e5" />

### 6. K-Means Clustering
K-Means clustering was performed to identify clusters within the dataset:
<img width="1000" alt="Image" src="https://github.com/user-attachments/assets/fe82aeef-78a9-4403-a17a-42e2bf831384" />

### 7. Classification with Logistic Regression
A Logistic Regression model was used for binary classification, with the following results:
- **Confusion Matrix**:
  <img width="1000" alt="Image" src="https://github.com/user-attachments/assets/fda3838c-60bb-423e-a06a-a63c382edc83" />
- **Classification Report**:
  <img width="1000" alt="Image" src="https://github.com/user-attachments/assets/7b6c6e2b-664a-48f8-8af6-89a8715a1bbc" />

### 8. Classification with Random Forest
A Random Forest classifier was trained for binary classification of normal vs. attack traffic. Below are the confusion matrix and classification report:
- **Confusion Matrix**:
  <img width="1000" alt="Image" src="https://github.com/user-attachments/assets/adbdce2f-f432-4729-b6b9-13c9a65a9dfc" />


## Contact
For queries or contributions, please contact:
**Tashfeen Abbasi**  
Email: abbasitashfeen7@gmail.com
