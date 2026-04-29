FROM ghcr.io/zhayujie/chatgpt-on-wechat:latest

# Set timezone to Asia/Shanghai for correct log timestamps
ENV TZ=Asia/Shanghai

ENTRYPOINT ["/entrypoint.sh"]
