// Start of Selection
#!/usr/bin/env zsh

# --- Script to create the ml-service repository structure (zsh version) ---
# --- Assumes you are already inside the repository folder ---
# --- Assumes a .gitignore file already exists ---

echo "Creating directories..."

mkdir -p ".github/workflows"
mkdir -p "airflow"
mkdir -p "config"
mkdir -p "data"
mkdir -p "docs"
mkdir -p "notebooks"
mkdir -p "scripts"
mkdir -p "src/app/models"
mkdir -p "src/app/routers"
mkdir -p "src/ml/models"
mkdir -p "src/ml/pipelines"
mkdir -p "src/ml/utils"
mkdir -p "tests"

echo "Directories created successfully."

echo "Creating empty files..."

touch ".github/workflows/ci-cd.yml"
touch "Dockerfile"
touch "README.md"
touch "airflow/pipeline_dag.py"
touch "config/config.yaml"
touch "config/.env.example"
touch "notebooks/ecommerce_analysis.ipynb"
touch "setup.py"
touch "requirements.txt"

# Create files for the FastAPI application package
touch "src/app/__init__.py"
touch "src/app/main.py"
touch "src/app/models/__init__.py"
touch "src/app/routers/__init__.py"

# Create files for the Machine Learning code package
touch "src/ml/__init__.py"
touch "src/ml/evaluate.py"
touch "src/ml/models/__init__.py"
touch "src/ml/models/forecaster.py"
touch "src/ml/models/recommender.py"
touch "src/ml/pipelines/__init__.py"
touch "src/ml/predict.py"
touch "src/ml/train.py"
touch "src/ml/utils/__init__.py"
touch "src/ml/utils/data_utils.py"
touch "src/ml/utils/model_utils.py"

# Create test file for pipeline validation
touch "tests/test_pipeline.py"

echo "Empty files created successfully."

echo "--------------------------------------------------------------------"
echo "Repository structure created successfully in the current directory!"
echo "--------------------------------------------------------------------"
