# Ecommerce-ML-API: Machine Learning API for E-commerce Analysis

## Project Overview
This repository houses the Machine Learning API component of a larger project focused on business analysis for an e-commerce company. The overall project aims to leverage historical sales data to:

- Analyze past sales trends (Exploratory Data Analysis - EDA).
- Forecast future sales trends to understand demand patterns.
- Develop a Product Recommendation System to enhance sales by suggesting relevant products to customers.

This **Ecommerce-ML-API** repository specifically focuses on building and deploying the machine learning models as a robust and accessible API using **FastAPI**. The API serves as the backend for the web application, providing endpoints to:

- Retrieve sales forecasts for future periods.
- Obtain product recommendations based on historical data and collaborative filtering techniques.

### Key Advantages
By separating the machine learning logic into a dedicated API, we achieve:

- **Modularity**: Clear separation of concerns between the ML models and the web application.
- **Scalability**: The API can be scaled independently based on demand for ML predictions.
- **Maintainability**: Easier to update and maintain the ML models and API logic without impacting the web application directly.
- **Reusability**: The API could potentially be reused by other applications or services in the future.

This project adheres to **Software Engineering (SWE) and Machine Learning Operations (MLOps)** principles by emphasizing modularity, clear structure, version control, and deployability of the ML components.

## Repository Purpose
The primary purpose of this repository is to develop, train, and deploy the machine learning models necessary for the e-commerce analysis project as a **RESTful API**. It includes:

- **Data Processing Scripts**: For cleaning, transforming, and preparing the e-commerce sales data.
- **Machine Learning Models**:
  - **Forecaster Model**: An ensemble model combining **SARIMA** and **XGBoost** for time series sales forecasting.
  - **Product Recommendation System**: Utilizing **Collaborative Filtering** and **K-means Clustering** for product recommendations.
- **API Endpoints (FastAPI)**:
  - Endpoints to serve **sales forecasts**.
  - Endpoints to serve **product recommendations**.
- **Model Training Scripts**: To train and potentially retrain the machine learning models.

This repository serves as the **engine** that powers the analytical and predictive capabilities of the entire e-commerce analysis project.

## Features
### Sales Forecasting API
- Predicts future sales trends using an ensembled **SARIMA + XGBoost** model.
- Provides endpoints to retrieve sales forecasts for specified periods.

### Product Recommendation API
- Recommends products to users based on **collaborative filtering** and **clustering algorithms**.
- Offers endpoints to obtain product recommendations for specific users or scenarios.

### Data Handling Utilities
- Scripts for **data loading, cleaning, and preprocessing** of e-commerce sales data.

### Model Training Pipeline
- Scripts to **train both the forecasting and recommendation models**.
- Clear separation of **training** and **inference** code for better **MLOps** practices.

### API using FastAPI
- Built using **FastAPI** for high performance and ease of use.
- Utilizes **Pydantic** for data validation and schema definition.
- Includes a **clear and organized API endpoint structure**.

## Getting Started
Follow these steps to set up and run the **Ecommerce-ML-API** repository on your local machine.

### Prerequisites
Before you begin, ensure you have the following installed:

- **Python**: Version 3.9 or higher is recommended. I am using version 3.12.3 for this project [Download Python](https://www.python.org/downloads/)
- **pip**: Python package installer (usually comes with Python installations).
- **Virtual Environment** (Optional but Recommended): `venv` or `conda` for creating isolated Python environments.
- **MySQL Database** (if running data loading scripts): Ensure you have MySQL installed and running.

### Installation Steps
#### 1. Clone the repository:
```bash
git clone https://github.com/Taymullah/Ecommerce-ML-API.git
cd Ecommerce-ML-API
```
#### 2. Create a virtual environment (recommended):
**Using `venv`**:
```bash
python -m venv venv
source venv/bin/activate  # On Linux/macOS
venv\Scripts\activate  # On Windows
```

**Or using `conda`**:
```bash
conda create --name ecommerce-ml-env python=3.9
conda activate ecommerce-ml-env
```

#### 3. Install dependencies:
```bash
pip install -r requirements.txt
```
This will install FastAPI, Pydantic, scikit-learn, pandas, and other required packages.

## Running the API
Navigate to the `src/api` directory:
```bash
cd src/api
```

Start the FastAPI application using Uvicorn:
```bash
uvicorn main:app --reload
```
- `uvicorn`: ASGI server for running FastAPI applications.
- `main:app`: Specifies the app instance in `main.py`.
- `--reload`: Enables automatic reloading during development.

## Contact
For questions or feedback, please reach out:

📧 [Email](sm.taymullah@gmail.com)  
🔗 [LinkedIn](https://linkedin.com/in/salahaldin-taymullah/)
