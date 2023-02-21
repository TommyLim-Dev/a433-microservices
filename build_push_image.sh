#Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .

#Melihat daftar image di lokal.
docker images

#Mengubah nama image agar sesuai dengan format GitHub Packages 
docker tag item-app:v1 ghcr.io/tommylim-dev/item-app:v1

#Login ke github packages
echo $PAT | docker login ghcr.io --username TommyLim-Dev --password-stdin

#Mengunggah image GitHub Packages 
docker push ghcr.io/tommylim-dev/item-app:v1
