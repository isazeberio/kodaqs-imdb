#!/bin/bash
# Create and activate virtual environment
python3 -m venv imdb_venv
source imdb_venv/bin/activate #macOs/Linux
# imdb_venv\Scripts\activate #Windows 


# Upgrade pip
pip install --upgrade pip

# Install dependencies
pip install -r requirements.txt

# Convert and execute notebook 
jupyter nbconvert --execute --to notebook --inplace ./code/imdb.ipynb

# Convert notebook to normal srcript
# jupyter nbconvert --to script code/imdb.ipynb
# python code/imdb.py


echo "Jupyter notebook executed successfully"