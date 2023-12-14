#!/bin/bash
 
# Validasi apakah variabel PAT sudah diatur
if [ -z "$PAT" ]; then
  echo "Error: PAT belum diatur. Silakan atur PAT Anda sebelum menjalankan skrip ini."
  exit 1
fi
 
# Langkah 1: Build Docker image
docker build -t order-service:latest .
 
# Langkah 2: Tampilkan daftar image Docker
docker images
 
# Langkah 3: Tag Docker image untuk digunakan dengan GitHub Container Registry (GHCR)
docker tag order-service:latest ghcr.io/alvianfahrul/order-service:latest
 
# Langkah 4: Login ke GHCR menggunakan Personal Access Token (PAT)
echo "$PAT" | docker login ghcr.io --username alvianfahrul --password-stdin
 
# Langkah 5: Push Docker image ke GHCR
docker push ghcr.io/alvianfahrul/order-service:latest
