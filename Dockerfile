# Gunakan sistem operasi Linux yang sangat ringan (Alpine)
FROM alpine:latest

# Instal bash karena Alpine aslinya tidak punya bash lengkap
RUN apk add --no-cache bash

# Tentukan folder kerja di dalam kontainer
WORKDIR /app

# Salin script Anda dari laptop ke dalam kontainer
COPY system_check.sh .

# Beri izin eksekusi
RUN chmod +x system_check.sh

# Jalankan script saat kontainer dinyalakan
CMD ["./system_check.sh"]
