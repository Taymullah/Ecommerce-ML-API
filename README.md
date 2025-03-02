# Ecommerce-ML-API: Machine Learning API for E-commerce Analysis

> **Note:** This repository is currently representing Stage 1 of a 3-stage project. I did not expect the repository to get this much attention and will be working around the clock to update it as soon as possible. Thank you for your interest and patience!

## Project Overview
This repository houses the Machine Learning API component of a larger project focused on business analysis for an e-commerce company. The overall project aims to leverage historical sales data to:

- Analyze past sales trends (Exploratory Data Analysis - EDA).
- Forecast future sales trends to understand demand patterns.
- Develop a Product Recommendation System to enhance sales by suggesting relevant products to customers.

This **Ecommerce-ML-API** repository specifically focuses on building and deploying the machine learning models as a robust and accessible API using **FastAPI**. The API serves as the backend for the web application, providing endpoints to:

- Retrieve sales forecasts for future periods.
- Obtain product recommendations based on historical data and collaborative filtering techniques.

## Project Stages

### Stage 1 (Current Repository)
- Raw data extraction, cleaning, and transformation
- Exploratory Data Analysis (EDA) & SQL queries
- Building a GBSX forecasting model (combined Gradient Boosting and SARIMA)
- Implementing a Product Recommendation System
- Developing a REST API using FastAPI
- Containerization and cloud deployment (Azure)

### Stage 2 (Future)
- Backend development using Spring Boot framework
- REST API that connects to the Stage 1 API
- MySQL database integration
- Dashboard data preparation

### Stage 3 (Future)
- Interactive web application with React and Tailwind CSS
- Sales forecast visualization
- Interactive dashboard with historical data
- Product recommendation demo interface

## Project Structure
```
Ecommerce-ML-API/
├── airflow/                # Airflow DAGs for workflow orchestration
├── config/                 # Configuration files for the project
├── data/                   # Data directory (raw, processed, etc.)
├── docs/                   # Documentation files
├── notebooks/              # Jupyter notebooks for exploration and analysis
├── scripts/                # Utility scripts
├── src/                    # Source code
│   ├── app/                # FastAPI application
│   │   ├── models/         # Pydantic models for API
│   │   └── routers/        # API endpoints
│   ├── ml/                 # Machine learning code
│   │   ├── models/         # ML model definitions
│   │   ├── pipelines/      # Training and inference pipelines
│   │   └── utils/          # ML utilities
│   └── utils/              # General utilities
├── tests/                  # Test files
├── .env                    # Environment variables
├── Dockerfile              # Docker configuration
├── requirements.txt        # Python dependencies
└── setup.py                # Package setup file
```

## Installation Guide (Beginner-Friendly)

### Prerequisites
Before you begin, make sure you have:

- **Python 3.9+**: This project uses Python 3.13.1, but 3.9 or newer should work
- **C/C++ compiler**: Essential for building certain dependencies
  - macOS: Install Xcode Command Line Tools (`xcode-select --install`)
  - Windows: Microsoft Visual C++ Build Tools
  - Linux: GCC (`sudo apt-get install build-essential`)
- **MySQL Database**: For storing and retrieving data
- **Homebrew** (macOS users): For installing system dependencies

### Step 1: Clone the Repository
```bash
git clone https://github.com/Taymullah/Ecommerce-ML-API.git
cd Ecommerce-ML-API
```

### Step 2: Set Up a Virtual Environment
This creates an isolated environment for your project dependencies.

```bash
# Create a virtual environment
python -m venv ecommerce-fastapi --upgrade-deps

# Activate the environment
# On macOS/Linux:
source ecommerce-fastapi/bin/activate
# On Windows:
ecommerce-fastapi\Scripts\activate
```

After activation, your terminal prompt should change to show `(ecommerce-fastapi)`, indicating the environment is active.

### Step 3: Verify Your Environment
Make sure you're using the correct Python from your virtual environment:

```bash
# Check which Python is being used
which python3  # Should show a path inside your virtual environment

# Verify pip version
python -m pip --version
```

### Step 4: Install RE2 (Required for Apache Airflow)
Some packages depend on the RE2 C++ library. This might seem like a lot of work, but it's necessary for Apache Airflow components.

```bash
# For macOS users with Homebrew
brew install re2

# For Linux (Ubuntu/Debian)
sudo apt-get install libre2-dev

# For Windows users
# Currently, this is more complex - consider using WSL or Docker
```

### Step 5: Set Up Environment Variables for C++ Libraries
These settings help the compiler find the RE2 library:

```bash
# For macOS (with Homebrew)
export CPATH="$(brew --prefix re2)/include:$CPATH"
export LDFLAGS="-L$(brew --prefix re2)/lib $LDFLAGS"

# For Linux
export CPATH="/usr/include:$CPATH"
export LDFLAGS="-L/usr/lib -L/usr/lib/x86_64-linux-gnu $LDFLAGS"
```

### Step 6: Install Python Dependencies

```bash
# Make sure pip is updated
pip install --upgrade pip

# Install requirements
pip install -r requirements.txt
```

This might take some time as it installs all necessary packages including machine learning libraries, FastAPI, and Apache Airflow.

### Step 7: Configure Your IDE (Important!)
After installation, make sure your IDE (like VS Code, PyCharm, or Cursor) is using the Python interpreter from your virtual environment:

- In VS Code: Press `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (macOS), type "Python: Select Interpreter", and select the one from your `ecommerce-fastapi` environment
- In PyCharm: Go to Settings → Project → Python Interpreter → Add → Select the interpreter from your virtual environment
- In Cursor: Check the Python environment settings to point to your virtual environment's Python

## Troubleshooting

### Common Issues
- **"Module not found" errors even after installation**: Make sure your IDE is using the Python interpreter from your virtual environment
- **C++ compilation errors**: You might need additional system dependencies or compiler tools
- **Apache Airflow installation issues**: These often relate to the RE2 library or other C++ dependencies

### If You're Still Stuck
Please give it time. I am still working on Stage 1 and will likely account for a variety of potential issues I myself encounter along the way. Feel free to open an issue on GitHub with details about the error message and your system configuration. I can also be contacted through the links below.

## More Coming Soon
As this is just Stage 1 of a 3-stage project, expect frequent updates to this repository. Currently focusing on getting the core ML components and API functioning properly.

## Contact
For questions or feedback, please reach out:

📧 [Email](sm.taymullah@gmail.com)  
🔗 [LinkedIn](https://linkedin.com/in/salahaldin-taymullah/)
🐦 [Twitter/X](https://x.com/Athani_X)
