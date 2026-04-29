FROM ghcr.io/zhayujie/chatgpt-on-wechat:latest

# Set timezone to Asia/Shanghai for correct log timestamps
ENV TZ=Asia/Shanghai

# Set Python output to unbuffered mode so logs appear immediately
ENV PYTHONUNBUFFERED=1

ENTRYPOINT ["/entrypoint.sh"]
