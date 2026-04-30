FROM ghcr.io/zhayujie/chatgpt-on-wechat:latest

# Set timezone to Asia/Shanghai for correct log timestamps
ENV TZ=Asia/Shanghai

# Set Python output to unbuffered mode so logs appear immediately
ENV PYTHONUNBUFFERED=1

# Set default encoding to UTF-8 to avoid issues with Chinese characters
ENV PYTHONIOENCODING=utf-8

ENTRYPOINT ["/entrypoint.sh"]
