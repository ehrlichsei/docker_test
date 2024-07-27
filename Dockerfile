# 使用官方 Python 3.9 镜像作为基础镜像
FROM python:3.9

# 设置工作目录为 /app
WORKDIR /app

# 将 requirements.txt 复制到工作目录
COPY requirements.txt requirements.txt

# 安装 Python 依赖
RUN pip install -r requirements.txt

# 将当前目录的内容复制到工作目录
COPY . .

# 暴露容器的端口
EXPOSE 5003

# 运行 Flask 应用
CMD ["python", "app.py"]