# Gunakan image nginx resmi
FROM nginx:alpine

# Hapus default HTML nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy semua file html/css/js ke direktori root nginx
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Tidak perlu override CMD karena nginx sudah otomatis jalan
