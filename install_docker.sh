# 官方安装教程 git地址：https://github.com/docker/docker-install/
curl -fsSL https://get.docker.com -o get-docker.sh && sh ./get-docker.sh && rm -rf get-docker.sh

# 设置docker开启启动
systemctl enable docker

# 启动docker
systemctl start docker

# 下载docker-compose 官方安装教程方式：https://docs.docker.com/compose/install/standalone/
curl -SL https://github.com/docker/compose/releases/download/v2.33.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose

# 赋予执行权限
chmod +x /usr/local/bin/docker-compose

# 安装docker-compose bash命令提示
curl -SL https://raw.githubusercontent.com/docker/compose/1.25.4/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose
