FROM ubuntu:latest

# 安装基础工具和 ttyd
RUN apt-get update && apt-get install -y \
    curl \
    git \
    wget \
    tmux \
    htop \
    ttyd \
    && rm -rf /var/lib/apt/lists/*

# 设置工作目录
WORKDIR /root

# 暴露 Railway 要求的端口（Railway 会自动将 PORT 环境变量注入）
EXPOSE 7681

# 启动 ttyd，并设置登录账号密码（请把 admin:mypassword 换成你自己的）
CMD ["sh", "-c", "ttyd -p $PORT -c hufeiwang:231456 bash"]
