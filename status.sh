#!/bin/bash

while true; do
  clear  

  echo "CPU Usage:"
  CPU_USAGE=$(top -b -n 1 | grep "%Cpu(s)" | awk '{print $2 + $4}')
  echo "Total CPU Usage: ${CPU_USAGE}%"

  echo -e "\nRAM Usage:"
  free -h

  echo -e "\nStandard NVIDIA-SMI Output:"
  nvidia-smi

  echo -e "\nDetailed GPU Usage (NVIDIA):"
  # Query GPU-related information
  GPU_INFO=$(nvidia-smi --query-gpu=index,utilization.gpu,memory.total,memory.used,memory.free,clocks.current.graphics,clocks.max.graphics --format=csv,noheader,nounits)
  
  GPU_INDEX=$(echo "${GPU_INFO}" | awk -F ',' '{print $1}')
  GPU_UTILIZATION=$(echo "${GPU_INFO}" | awk -F ',' '{print $2}')
  GPU_TOTAL_MEMORY=$(echo "${GPU_INFO}" | awk -F ',' '{print $3}')
  GPU_USED_MEMORY=$(echo "${GPU_INFO}" | awk -F ',' '{print $4}')
  GPU_FREE_MEMORY=$(echo "${GPU_INFO}" | awk -F ',' '{print $5}')
  GPU_CURRENT_CLOCK=$(echo "${GPU_INFO}" | awk -F ',' '{print $6}')
  GPU_MAX_CLOCK=$(echo "${GPU_INFO}" | awk -F ',' '{print $7}')

  echo "GPU Index: ${GPU_INDEX}"
  echo "GPU Utilization: ${GPU_UTILIZATION}%"
  echo "GPU Total Memory: ${GPU_TOTAL_MEMORY} MiB"
  echo "GPU Used Memory: ${GPU_USED_MEMORY} MiB"
  echo "GPU Free Memory: ${GPU_FREE_MEMORY} MiB"
  echo "GPU Current Clock Speed: ${GPU_CURRENT_CLOCK} MHz"
  echo "GPU Max Clock Speed: ${GPU_MAX_CLOCK} MHz"

  # Uncomment the appropriate line based on your GPU vendor
  # echo -e "\nGPU Usage (AMD):"
  # radeontop

  # echo -e "\nGPU Usage (Intel):"
  # intel_gpu_top

  sleep 5
done
