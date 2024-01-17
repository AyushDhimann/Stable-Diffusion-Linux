# Automatic1111's Stable Diffusion WebUI Installer

Install Automatic1111's Stable Diffusion WebUI on any Linux machine, whether local, server, or Google Colab in just 2 easy steps. Follow the guide tailored to your specific machine.

## Features

- Comes with a handy Jupyter notebook for:
  - Automatic installation of Automatic1111 and its requirements
  - Easy model downloads
  - Simple log management
  - CPU and GPU scripts with publicly shareable links
- Real-time monitoring of machine resource usage

## Requirements

1. Ensure port 8888 is open in the network firewall (for Jupyter server).
2. Have the direct download link for your model (not the model page).
3. Basic understanding of Jupyter Notebook.
4. Previous experience with Automatic1111.
5. If running on Google Colab, Colab Pro is mandatory.

## Installation

### Types of Installation
1. Locally on Linux
2. Linux Web Server (e.g, Digital Ocean, AWS)
3. Google Colab

#### 1. Locally on Linux

1. Open your terminal and run this command to automatically install and run the Jupyter notebook
```
git clone https://github.com/AyushDhimann/Stable-Diffusion-Linux && cd Stable-Diffusion-Linux && chmod +x linux.sh && sudo ./linux.sh
```

2. Check the console and you should see a jupyter notebook access link like ``http://127.0.0.1:8888/?token=c8de56fa... ``

3. Now open the ``RunStableDiffusion.ipynb`` and skip to the Usage section.

#### 2. On a Server 

1. Connect to your server using your preferred SSH Client.

2. Copy and Paste the below command in your console and run it.
    ```
   git clone https://github.com/AyushDhimann/Stable-Diffusion-Linux && cd Stable-Diffusion-Linux && chmod +x server.sh && sudo ./server.sh
    ```
2. Check the console and you should see a jupyter notebook access link like ``http://<YOUR-IP>:8888/?token=c8de56fa... ``

3. Now open the ``RunStableDiffusion.ipynb`` and skip to the Usage section.

#### 2.1 On a Server with Port Forwarding

This method is safer as it does not expose your jupyter notebook publically(even though it requires a unique access token).

1. Connect to your server using your preferred SSH Client.

2. Copy and Paste the below command in your console and run it.
    ```
   git clone https://github.com/AyushDhimann/Stable-Diffusion-Linux && cd Stable-Diffusion-Linux && chmod +x linux.sh && sudo ./linux.sh
    ```
3.  Open a new terminal in your local system and run the following:
   ``` ssh -L 8888:localhost:8888 root@<YOUR-SERVER-IP/URL> ```
Replace the `` <YOUR-SERVER-IP/URL>`` with you actual Server IP/URL and then provide the server's password on the next step.
This will route a path from the server's localhost to your localhost.

5. Go back to the main console and you should see a jupyter notebook access link like ``http://127.0.0.1:8888/?token=c8de56fa... ``

6. Now open the ``RunStableDiffusion.ipynb`` and skip to the Usage section.


#### 4. On Google Colab

1. Open this link https://colab.research.google.com/github/AyushDhimann/Stable-Diffusion-Linux/blob/main/RunStableDiffusionOnColab.ipynb
   
2. Skip to Usage Section


 ## Usage

 1. Run the Installation process
 2. Obtain your model's download link and paste it.
    `` MODEL_LINK = "https://civitai.com/api/download/models/501.. ``
 3. Follow the download process.
 4. To download LoRa, VAE, etc., input the folder name as per Automatic1111's model folder and replace ``MODEL_LINK``
 5. Run the appropriate cell according to your needs, CPU or CPU+GPU. This will install all the requirements and run the WebUI
 6. Click on the URL to access your WebUI
 7. Credentials for the Webui are as follows: Username : ```s``` and Password : ```d```

## Monitor Resource Usage 

(Not applicable for Google Colab users)

Check the load and usage of your CPU and GPU:

1. Open a new terminal on the same machine.

2. Navigate to the directory where this repository is installed.
3. Run this command
   ```
   ./status.sh
   ```

### Enjoy🤖🥳
###### Feel free to customize further based on your preferences!
