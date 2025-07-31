#!/bin/bash

# ------------------------------
# Script Update n8n Self-hosted
# ------------------------------
set -e

echo "🛑 1. Menghentikan layanan n8n..."
sudo systemctl stop n8n || echo "⚠️ Gagal stop service atau service belum ada."

echo "🔎 2. Membersihkan folder sementara npm..."
cd /usr/local/lib/node_modules/
sudo find . -maxdepth 1 -type d -name ".n8n-*" -exec rm -rf {} +

echo "📦 3. Mengupdate n8n via npm..."
sudo npm install -g n8n

echo "✅ 4. Verifikasi versi n8n:"
n8n --version

echo "🚀 5. Memulai ulang layanan n8n..."
sudo systemctl start n8n

echo "📄 6. Status layanan:"
sudo systemctl status n8n --no-pager

echo "🎉 Update selesai! n8n telah diperbarui dan dijalankan kembali."
