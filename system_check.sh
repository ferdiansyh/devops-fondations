#!/bin/bash


# Mengambil angka penggunaan disk
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')


# Logika Alerting


# Bagian Dashboard HTML Profesional
echo "<html><head><meta charset='UTF-8'></head><body style='font-family: Arial; background: #222; color: #fff; padding: 20px;'>" > log_sistem.txt
echo "<h1 style='color: #4CAF50;'>Dashboard Monitoring</h1>" >> log_sistem.txt
echo "<div style='border: 1px solid #555; padding: 15px; border-radius: 8px;'>" >> log_sistem.txt
echo "<p><strong>Waktu Update:</strong> $(date)</p>" >> log_sistem.txt
echo "<p><strong>Penggunaan Disk:</strong> <span style='font-size: 24px;'>$USAGE%</span></p>" >> log_sistem.txt

if [ "$USAGE" -gt 80 ]; then
    echo "<p style='color: #ff4444;'>⚠️ PERINGATAN: DISK KRITIS!</p>" >> log_sistem.txt
else
    echo "<p style='color: #00C851;'>✅ Status Disk: Aman.</p>" >> log_sistem.txt
fi

echo "</div></body></html>" >> log_sistem.txt
