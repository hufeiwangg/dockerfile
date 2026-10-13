FROM ubuntu:latest

# 安装常用工具（可选，方便你后续使用命令行）
RUN apt-get update && apt-get install -y \
    curl \
    git \
    wget \
    nano \
    && rm -rf /var/lib/apt/lists/*

# 设置工作目录
WORKDIR /app

# 核心：让容器保持运行的核心命令
CMD ["tail", "-f", "/dev/null"]
