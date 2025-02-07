# Hadoop-Hive-PySpark-CyberAnalytics

This repository demonstrates a comprehensive big data analytics pipeline tailored for cyber threat analysis using Apache Hadoop, Apache Hive, and PySpark. It leverages the UNSW-NB15 dataset to provide deep insights into cybersecurity threats.

## Prerequisites

Ensure you have the following installed on your system:
- Apache Hadoop
- Apache Hive
- PySpark
- Python 3.x
- Jupyter Notebook (for .ipynb files)

## Installation

Follow these steps to set up your environment:

1. **Clone the Repository**
   Clone the repository and navigate to the project directory using the following commands:
   ```bash
   git clone https://github.com/yourusername/Hadoop-Hive-PySpark-CyberAnalytics.git
   cd Hadoop-Hive-PySpark-CyberAnalytics

2. **Set Up Hadoop and Hive**
- Config Apache Hadoop 3.3.6 and Apache Hive 4.0.1. 

## Usage

### Start Hadoop Services
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

### Execute Hive Queries
After the data is loaded into HDFS, proceed to execute Hive queries to analyze the dataset:
```bash
hive -f hivequeries.hql
```
### Hive Query 1
![Hive Query 1](https://github.com/user-attachments/assets/27b02d3b-1b71-40f7-81f1-c9b0182f0782)

### Hive Query 2
![Hive Query 2](https://github.com/user-attachments/assets/4ce23090-2a1c-4bf1-bb32-6cdd4aff4731)

### Hive Query 3
![Hive Query 3](https://github.com/user-attachments/assets/af2b4729-b600-4252-bddc-bd5a13e82065)

### Hive Query 4
![Hive Query 4](https://github.com/user-attachments/assets/f130b621-8abc-44c2-8de4-7bda60216d48)

### Hive Query 5
![Hive Query 5](https://github.com/user-attachments/assets/449c55b6-53eb-4e47-9399-37ffc6fb5e10)


