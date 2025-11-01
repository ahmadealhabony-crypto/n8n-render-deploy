# استخدم الصورة الرسمية من n8n
FROM n8nio/n8n:latest

# إعداد المتغيرات
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=EPFhse@1234
ENV N8N_ENCRYPTION_KEY=EPFHSE2025StrongKey_456xyz
ENV N8N_EDITOR_BASE_URL=https://n8n-hse-alert.onrender.com
ENV WEBHOOK_URL=https://n8n-hse-alert.onrender.com

# تعيين دليل العمل الصحيح
WORKDIR /home/node

# تأكد أن n8n متاح في PATH
ENV PATH="/usr/local/bin:${PATH}"

# تشغيل n8n كأمر افتراضي
ENTRYPOINT ["tini", "--"]
CMD ["n8n", "start"]
