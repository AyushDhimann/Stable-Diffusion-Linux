#!/bin/bash

# Get the public IP address of the server
PUBLIC_IP=$(curl -s http://checkip.amazonaws.com)

# Create a new Jupyter Notebook configuration file
jupyter notebook --generate-config

# Set the IP address and port in the configuration file
echo "c.NotebookApp.ip = '$PUBLIC_IP'" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.port = 8888" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.allow_origin = '*'" >> ~/.jupyter/jupyter_notebook_config.py

# Start the Jupyter Notebook server
jupyter notebook --no-browser --allow-root