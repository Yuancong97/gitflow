# 使用官方 Node.js 18 的轻量级 alpine 镜像作为基础底座
FROM node:18-alpine

# 设定容器内的工作目录，后续命令（如 COPY, RUN, CMD）都在这个目录下执行
WORKDIR /usr/src/app

# 首先复制 package.json（和 package-lock.json 如果有的话）
# 这么做是为了利用 Docker 的层缓存。如果只有代码变动而依赖没有变，可以不用每次都重新 npm install
COPY package*.json ./

# 安装应用的依赖
RUN npm install

# 复制应用的所有源代码到容器内的主目录
COPY . .

# 告诉 Docker 运行时，这个容器会监听 3000 端口（这仅仅起声明和记录的作用，真实的端口映射要在运行容器时指定）
EXPOSE 3000

# 指定启动容器时要运行的命令
CMD [ "npm", "start" ]
