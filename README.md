Install Automatic1111's Stable Diffusion WebUI on any Linux machine, be it locally, server, or Google colab in just 2 steps. 
Just follow the guide for your specific machine.

# Features
1. Comes with a handy jupyter notebook to handle
   a) Automatic installation of Automatic1111 and it's requirements
   b) Easy Models downloads
   c) Easy log management
   d) CPU and GPU scripts with publically sharable links
2. Viewing Real-Time machine resource usages

# Requirements

1. Should have port 8888 open in network firewall (for jupyter server)
2. The Download link of your model (not the model page)
3. Basic understanding of Jupyter Notebook
4. Previous experience with Automatic1111
5. If running on Google Colab, Colab Pro is mandatory

# Installation

## Types of Installation
1. Locally on Linux
2. Linux Web Server (e.g, Digital Ocean, AWS)
3. Google Colab

### 1. Locally on Linux

1. Open your terminal and run this command to automatically install and run the Jupyter notebook
```
git clone https://github.com/AyushDhimann/Stable-Diffusion-Linux && cd Stable-Diffusion-Linux && chmod +x linux.sh && sudo ./linux.sh
```

2. Check the console and you should see a jupyter notebook access link like ``http://localhost:8888/?token=c8de56fa... ``

3. Now open the ``RunStableDiffusion.ipynb`` and skip to the Usage section.

### 2. On a Server 

1. Connect to your server using your preferred SSH Client.

2. Copy and Paste the below command in your console and run it.
    ```
   git clone https://github.com/AyushDhimann/Stable-Diffusion-Linux && cd Stable-Diffusion-Linux && chmod +x server.sh && sudo ./server.sh
    ```
2. Check the console and you should see a jupyter notebook access link like ``http://localhost:8888/?token=c8de56fa... ``

3. Now open the ``RunStableDiffusion.ipynb`` and skip to the Usage section.

### 3. On Google Colab

1. Open this link https://colab.research.google.com/github/AyushDhimann/Stable-Diffusion-Linux/blob/main/RunStableDiffusionOnColab.ipynb
   
2. Skip to Usage Section


 # Usage

 1. Run the Installation process
 2. Get your model's download link and paste it.
    `` MODEL_LINK = "https://civitai.com/api/download/models/501.. ``
 3. Go through the Download Process.
 4. To Download LoRa, VAE etc input the folder name as per Automatic1111's model folder and replace the ``MODEL_LINK ``
 5. Run the appropriate cell according to your needs, CPU or CPU+GPU. This will install all the requirements and run the WebUI
 6. Click on the URL to access your WebUI
 7. Credentials for the Webui are as follows: Username : ```s``` and Password : ```d```

# Resource Usage 

(Not for Google Colab Users)
To check the load and usage of your CPU and GPU by following these steps:

1. Open a new terminal for the same machine
2. Switch to the directory where this repo is installed
3. Run this command
   ```
   ./status.sh
   ```

### Enjoy🤖🥳
