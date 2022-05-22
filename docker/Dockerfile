# 使用 alpine 作为基础镜像
FROM alpine:3.14

# 通过环境变量指定监听地址
ENV ROCKET_ADDRESS=0.0.0.0

# 通过环境变量指定监听端口
ENV ROCKET_PORT=8080

# 设置 /app 为工作目录
WORKDIR /app

# 定义构建参数 JAR_FILE，表示宿主机 rust 可执行文件路径
ARG RUST_FILE

# 把 rust 可执行文件拷贝到镜像的 /app/app
COPY ${RUST_FILE} /app/app

# 启动指令
CMD ["/app/app"]
