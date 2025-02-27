import setuptools
import os


# Read the requirements.txt file for install_requires
def load_requirements(filename="requirements.txt"):
    with open(filename, "r") as f:
        # Exclude editable installs (-e .) if necessary.
        return [
            line.strip() for line in f if line.strip() and not line.startswith("-e")
        ]


long_description = (
    "ML service package for business analysis, forecasting, and product recommendation "
    "using an ensemble of SARIMA and XGBoost, as well as PyTorch models, deployed via FastAPI."
)

setuptools.setup(
    name="Ecommerce-ML-API",
    version="0.0.1",
    author="Taymullah",
    author_email="sm.taymullah@gmail.com",
    description="A Python package for an end-to-end ML service in e-commerce business analysis",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/Taymullah/Ecommerce-ML-API",  # Optional: update with your repo link or a placeholder
    packages=setuptools.find_packages(),
    install_requires=load_requirements(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "Operating System :: OS Independent",
    ],
    python_requires=">=3.9",
)
