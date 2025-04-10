#!/bin/bash
# Create and activate virtual environment
python3 -m venv imdb_venv
source imdb_venv/bin/activate #macOs/Linux
# imdb_venv\Scripts\activate #Windows 


# Upgrade pip
pip install --upgrade pip

# Install dependencies
pip install -r requirements.txt

# Run the analysis
python code/imdb.ipynb

# Run the notebook
jupyter nbconvert --execute --to notebook code/imdb.ipynb

echo "Jupyter notebook executed succesfully"