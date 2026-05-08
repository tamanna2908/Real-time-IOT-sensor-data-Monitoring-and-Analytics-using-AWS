# Real-time-IOT-sensor-data-Monitoring-and-Analytics-using-AWS
A scalable, serverless IoT data engineering pipeline built on AWS to simulate real-time sensor data ingestion, processing, transformation, and analytics using AWS Lambda, S3, Glue, Athena, and PySpark.

📌 Project Overview:-

This project demonstrates how real-time IoT sensor data can be processed through a fully automated cloud-native architecture using AWS services.

The system simulates IoT devices generating sensor data continuously and processes that data through multiple ETL stages before making it available for analytics and visualization.

The pipeline includes:

Real-time IoT data simulation
Automated ingestion into Amazon S3
Data cleaning and transformation using AWS Glue & PySpark
Workflow orchestration using Glue Workflows
Query-ready storage in Parquet format
Data cataloging with AWS Glue Catalog
SQL analytics using Amazon Athena
Optional alerting/workflow triggers using AWS Lambda & SNS

🏗️ Architecture:-

IoT Simulator (Lambda)
        │
        ▼
Amazon S3 (Raw Data)
        │
        ▼
Glue Job 1 → raw-cleaned
        │
        ▼
Glue Job 2 → cleaned-enhanced
        │
        ▼
Glue Job 3 → enhanced-summarized
        │
        ▼
Glue Job 4 → summarized-final
        │
        ▼
Glue Data Catalog
        │
        ▼
Amazon Athena
        │
        ▼
Power BI Dashboard

⚙️ AWS Services Used

AWS Lambda-	Generate IoT sensor data & trigger workflows
Amazon S3	-Store raw and processed datasets
AWS Glue-	ETL processing using PySpark
AWS Glue Workflow	-Automate ETL job execution
AWS Glue Data Catalog-	Metadata management
Amazon Athena	-SQL-based analytics
Amazon SNS	-Optional workflow/event notifications
Power BI	-Dashboard visualization


📂 Project Structure
project/
│
├── lambda/
│   ├── IotDataProcessor.py
│   └── trigger-glue-workflow.py
│
├── glue-jobs/
│   ├── raw-cleaned.py
│   ├── cleaned-enhanced.py
│   ├── enhanced-summarized.py
│   └── summarized-final.py
│
├── docs/
│   └── architecture-diagram.png
│
└── README.md

🔄 Workflow Explanation
1. IoT Data Simulation

A Lambda function generates synthetic IoT sensor events including:

Temperature
Humidity
Pressure
Battery Level
Device Status
Timestamp
Example Event
{
  "device_id": "device_101",
  "temperature": 28.5,
  "humidity": 45.2,
  "pressure": 1002.4,
  "battery_level": 78,
  "status": "active",
  "timestamp": "2026-05-08T10:22:11"
}
🪣 S3 Data Lake Structure
s3://iot-simulator-data-bucket/

├── raw/
├── cleaned/
├── enhanced/
├── summarized/
└── final/

Partitioning is done using date-based folders for optimized querying and lower Athena costs.

🧹 ETL Pipeline

Glue Job 1 — raw-cleaned
Tasks:
Read raw JSON files
Remove null values
Remove duplicates
Validate sensor ranges
Normalize column names
Convert to Parquet format

Glue Job 2 — cleaned-enhanced
Tasks:
Add sensor status labels
Detect high temperature
Detect abnormal pressure
Add ingestion metadata
Enhance records for analytics

Glue Job 3 — enhanced-summarized
Tasks:
Create row-level flags
Add monitoring indicators
Generate status summaries
Add processing timestamps
Prepare analytics-ready dataset

Glue Job 4 — summarized-final
Tasks:
Save final data as partitioned Parquet
Register table in Glue Catalog
Create Athena query-ready dataset
Append partitions automatically


🔁 Workflow Automation

AWS Glue Workflow orchestrates all ETL jobs sequentially:

raw-cleaned
      ↓
cleaned-enhanced
      ↓
enhanced-summarized
      ↓
summarized-final

Workflow Name:

IotPipelineWorkflow
📊 Analytics with Athena

The final processed data can be queried directly using SQL in Amazon Athena.

Example Query
SELECT device_id,
       AVG(temperature) AS avg_temp
FROM final_organised_data
GROUP BY device_id;


📈 Power BI Dashboard

Power BI can connect to Athena or exported datasets to visualize:

Temperature trends
Humidity distribution
Device activity
Battery health
Error monitoring
Sensor anomalies


🔐 Features
Fully serverless architecture
Real-time IoT simulation
Automated ETL pipeline
Scalable cloud-native design
Cost-efficient using AWS Free Tier
Partitioned data lake
Query optimization using Parquet
Modular workflow design


💻 Technologies Used
Python
PySpark
AWS Lambda
AWS Glue
Amazon S3
Amazon Athena
AWS IAM
Power BI


🚀 Future Improvements
Real IoT device integration
Streaming with Amazon Kinesis
Real-time dashboards using QuickSight
Machine learning anomaly detection
SNS/Email alerting system
CI/CD deployment pipeline
Infrastructure as Code using Terraform


🧪 How to Run
1. Create AWS Resources
S3 Bucket
Glue Database
Glue Jobs
Lambda Functions
IAM Roles
Athena Table
2. Deploy Lambda Functions

Upload:

IotDataProcessor.py
trigger-glue-workflow.py

3. Configure Glue Jobs

Create 4 Glue jobs using the provided PySpark scripts.

4. Create Glue Workflow

Add all jobs in sequence:

raw-cleaned
cleaned-enhanced
enhanced-summarized
summarized-final

5. Trigger the Pipeline

Invoke Lambda function:

IotDataProcessor
📌 AWS Resource Names
Resource	Name
S3 Bucket	iot-simulator-data-bucket
Glue Database	iot_simulator_data_db
Glue Workflow	IotPipelineWorkflow
👩‍💻 Author

Tamanna
BE(CSE)
Chitkara University, Himachal Pradesh

📚 References
AWS Documentation
Apache Spark Documentation
Microsoft Power BI Documentation
