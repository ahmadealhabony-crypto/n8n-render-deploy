# استخدم صورة n8n الجاهزة من Docker Hub
FROM n8nio/n8n:latest

# إعداد المتغيرات الأساسية للنظام
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=EPFhse@1234
ENV N8N_ENCRYPTION_KEY=EPFHSE2025StrongKey_456xyz
ENV N8N_EDITOR_BASE_URL=https://n8n-hse-alert.onrender.com
ENV WEBHOOK_URL=https://n8n-hse-alert.onrender.com

# أوامر التشغيل
CMD ["n8n", "start"]
