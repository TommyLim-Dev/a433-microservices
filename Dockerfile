#Mengunduh/mengambil base image bernama node dari Docker Hub dengan tag 14-alpine.
FROM node:14-alpine

#Membuat directory baru bernama app di dalam container dan menjadikannya sebagai working directory
WORKDIR /app

#menyalin semua berkas yang ada di local working directory saat ini
COPY . .

#Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-dbsebagai database host
ENV NODE_ENV=production DB_HOST=item-db

#Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build 

#menentukan bahwa aplikasi berjalan pada port 8080
EXPOSE 8080
