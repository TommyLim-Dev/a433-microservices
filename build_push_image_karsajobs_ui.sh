#Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image tommy_7scr/karsajobs, dan memiliki tag latest.
docker build -t tommy_7scr/karsajobs-ui:latest .
 
#Melihat daftar image di lokal.
docker images
 
#Mengubah nama image agar sesuai dengan format GitHub Packages 
docker tag tommy_7scr/karsajobs-ui:latest ghcr.io/tommylim-dev/tommy_7scr/karsajobs-ui:latest
 
#Login ke github packages
echo $PASSWORD_DOCKER_HUB | docker login ghcr.io --username TommyLim-Dev --password-stdin
 
#Mengunggah image GitHub Packages 
docker push ghcr.io/tommylim-dev/tommy_7scr/karsajobs-ui:latest

docker run -d -p 8000:8000 ghcr.io/tommylim-dev/tommy_7scr/karsajobs-ui