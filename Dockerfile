FROM ghcr.io/zhayujie/chatgpt-on-wechat:latest

# Set timezone to Asia/Shanghai for correct log timestamps
ENV TZ=Asia/Shanghai

# Set Python output to unbuffered mode so logs appear immediately
ENV PYTHONUNBUFFERED=1

# Set default encoding to UTF-8 to avoid issues with Chinese characters
ENV PYTHONIOENCODING=utf-8

# Set locale to support UTF-8 encoding properly
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

# Disable hash randomization - note: only useful for debugging, remove in production
# ENV PYTHONHASHSEED=0

# Set a working directory for clarity
WORKDIR /app

# Keep container running in foreground and ensure clean shutdown on SIGTERM
STOPSIGNAL SIGTERM

ENTRYPOINT ["/entrypoint.sh"]
