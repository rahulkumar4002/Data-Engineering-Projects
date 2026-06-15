# Azure Cloud Fundamentals and Data Pipeline Implementation using ADF

## Objective

To understand Azure cloud concepts and build a complete data pipeline using Storage Account and Azure Data Factory.

---

# Task 1: Explore Azure Portal

## Description
Azure Portal was explored to understand Azure services and resource management. A Resource Group was created to organize and manage Azure resources efficiently.

## Steps Performed
- Logged into Azure Portal.
- Navigated to Resource Groups.
- Created a new Resource Group.
- Selected subscription and region.
- Successfully deployed the Resource Group.

## Deliverable
**Screenshot: Resource Group Creation**

---

# Task 2: Storage Setup

## Description
An Azure Storage Account was created to store data files. Blob Containers were created for source and destination data storage. A CSV file was uploaded to the source container.

## Steps Performed
- Created an Azure Storage Account.
- Created Blob Containers:
  - source
  - destination
- Uploaded CSV file:
  - Sample-Superstore.csv

## Deliverable
**Screenshot: Blob Container with Uploaded CSV File**

---

# Task 3: Azure Data Factory (ADF) Basics

## Description
Azure Data Factory was created and configured to perform data movement operations. Linked Services and Datasets were created for Blob Storage integration.

### ADF Components Explored
- Author
- Monitor
- Manage

---

## Linked Service Configuration

### Description
A Linked Service was created to establish a connection between Azure Data Factory and Azure Blob Storage.

### Configuration Details
- Service Type: Azure Blob Storage
- Authentication: Account Key
- Integration Runtime: AutoResolveIntegrationRuntime

### Deliverable
**Screenshot: Linked Service Configuration**

---

## Source Dataset Creation

### Description
A source dataset was created to access the CSV file stored in the source Blob container.

### Configuration
- Dataset Name: DS_Source_CSV
- Format: Delimited Text (CSV)
- Container: source
- File Name: Sample-Superstore.csv

### Deliverable
**Screenshot: Source Dataset Configuration**

---

## Destination Dataset Creation

### Description
A destination dataset was created to store processed output data.

### Configuration
- Dataset Name: DS_Destination_CSV
- Format: Delimited Text (CSV)
- Container: destination
- File Name: output.csv

### Deliverable
**Screenshot: Destination Dataset Configuration**

---

## Get Metadata Activity

### Description
The Get Metadata activity was used to validate and retrieve file information before processing data.

### Metadata Checked
- File existence
- Last modified date
- Structure validation

### Deliverable
**Screenshot: Get Metadata Activity**

---

# Task 4: Pipeline Development

## Description
A pipeline was created in Azure Data Factory to copy data from the source container to the destination container.

### Pipeline Details
- Pipeline Name: PL_Copy_CSV
- Activity Used: Copy Data

### Source Configuration
- Dataset: DS_Source_CSV

### Destination Configuration
- Dataset: DS_Destination_CSV

### Data Flow
Source CSV File → Copy Data Activity → Destination CSV File

### Deliverable
**Screenshot: Pipeline Design**

---

# Task 5: Pipeline Execution

## Description
The pipeline was executed using Debug mode to validate successful data movement.

### Execution Details
- Execution Method: Debug
- Status: Succeeded
- Integration Runtime: AutoResolveIntegrationRuntime

### Result
The CSV file was successfully copied from the source container to the destination container.

### Deliverable
**Screenshot: Pipeline Execution (Succeeded)**

---

# Task 6: IAM Roles

## Description
Azure IAM (Identity and Access Management) was used to provide access permissions for Azure resources.

### Roles Assigned
- Reader
- Contributor

### Purpose
- Reader Role: Provides read-only access to resources.
- Contributor Role: Allows resource management except access management.
- Azure Data Factory was granted access to Blob Storage resources.

### Deliverable
**Screenshot: IAM Role Assignment**

---

# Mini Project: End-to-End Data Pipeline

## Problem Statement

Build a complete pipeline that reads a CSV file from Azure Blob Storage and processes it using Azure Data Factory.

---

## Architecture

Source Blob Storage
↓
Linked Service
↓
Source Dataset
↓
Get Metadata Activity
↓
Copy Data Activity
↓
Destination Dataset
↓
Destination Blob Storage

---

## Requirements Implemented

### Source
- CSV file stored in Azure Blob Storage.

### Components Used
- Linked Service
- Source Dataset
- Destination Dataset
- Pipeline

### Processing
- Get Metadata Activity
- Copy Data Activity

### Destination
- Output CSV file stored in destination container.

---

## Expected Output

✔ Pipeline executed successfully

✔ Data copied from source container to destination container

✔ Metadata validated before execution

✔ Output file generated successfully

---

# Conclusion

This assignment provided hands-on experience with Azure Cloud services and Azure Data Factory. The project demonstrated the complete process of creating Storage Accounts, Blob Containers, Linked Services, Datasets, IAM configurations, and Data Pipelines. The pipeline successfully copied data from the source location to the destination location while validating metadata, fulfilling all assignment requirements.

---

# Student Details

**Name:** Rahul_Kumar_mmdu  
**Course:** B.Tech (CSE)  
**Technology:** Microsoft Azure Cloud & Azure Data Factory (ADF)
