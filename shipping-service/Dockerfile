# Gunakan image Node.js sebagai dasar
FROM node:14-alpine

# Set working directory di dalam container
WORKDIR /usr/src/app

# Salin file package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Install dependensi menggunakan npm
RUN npm install

# Salin semua file aplikasi Anda ke dalam container
COPY . .

# Port yang akan digunakan oleh aplikasi Anda
EXPOSE 3001

# Perintah untuk menjalankan aplikasi JavaScript Anda
CMD ["node", "index.js"]